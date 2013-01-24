.class Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mLastSavedFileUri:Landroid/net/Uri;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 217
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 218
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 458
    const/16 v1, 0xa

    if-ge p2, v1, :cond_22

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, t:Ljava/lang/String;
    :goto_21
    return-object v0

    .line 460
    .end local v0           #t:Ljava/lang/String;
    :cond_22
    const/16 v1, 0x64

    if-ge p2, v1, :cond_44

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_21

    .line 463
    .end local v0           #t:Ljava/lang/String;
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_21
.end method

.method private isPhoneNumberChar(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 509
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_c

    :cond_8
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "phoneNumber"

    .prologue
    .line 486
    if-nez p1, :cond_4

    .line 487
    const/4 p1, 0x0

    .line 505
    .end local p1
    :cond_3
    :goto_3
    return-object p1

    .line 489
    .restart local p1
    :cond_4
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 496
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_53
    if-ge v1, v2, :cond_65

    .line 499
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 500
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 501
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 505
    .end local v0           #c:C
    :cond_65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method


# virtual methods
.method public cancelRecording()V
    .registers 5

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 305
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 306
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 309
    .end local v0           #f:Ljava/io/File;
    :cond_11
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 310
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v2, "cancelRecording"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 311
    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8
    .parameter "title"
    .parameter "context"

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 472
    .local v2, files:[Ljava/io/File;
    new-instance v1, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    .line 474
    .local v1, filenameFilter:Ljava/io/FilenameFilter;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    sget-object v3, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 477
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 480
    :cond_2a
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 482
    if-eqz v2, :cond_33

    array-length v3, v2

    if-nez v3, :cond_35

    :cond_33
    const/4 v3, 0x1

    :goto_34
    return v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public createNewFileName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 432
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v4, "createNewFileName()"

    const/4 v5, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v0, fileName:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0395

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 439
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v3, v3, Lcom/android/phone/PhoneVoiceRecorder;->callerName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :goto_35
    const/4 v1, 0x1

    .line 444
    .local v1, num:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, prefix:Ljava/lang/String;
    :goto_3a
    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 447
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 448
    add-int/lit8 v1, v1, 0x1

    .line 449
    goto :goto_3a

    .line 441
    .end local v1           #num:I
    .end local v2           #prefix:Ljava/lang/String;
    :cond_4f
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$900(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 453
    .restart local v1       #num:I
    .restart local v2       #prefix:Ljava/lang/String;
    :cond_61
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v3
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 400
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 401
    return-void
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .registers 8
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 405
    packed-switch p2, :pswitch_data_3e

    .line 417
    :goto_4
    return-void

    .line 407
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 408
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_4

    .line 411
    :pswitch_21
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 412
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_4

    .line 405
    nop

    :pswitch_data_3e
    .packed-switch 0x320
        :pswitch_5
        :pswitch_21
    .end packed-switch
.end method

.method public prepareRecording()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    .line 248
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, callRecordingDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 250
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".voicecall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$502(Lcom/android/phone/PhoneVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 254
    :try_start_3c
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 255
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 256
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J
    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$600(Lcom/android/phone/PhoneVoiceRecorder;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V

    .line 258
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const v5, 0x2ca2068

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 259
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x2fa8

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 261
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 262
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x1f40

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 263
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 264
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 265
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    const-wide/16 v5, 0x300

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 267
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 269
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 270
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 271
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v5, "prepareRecording"

    const/4 v6, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V
    :try_end_d9
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_d9} :catch_da
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_d9} :catch_f8

    .line 281
    :goto_d9
    return v2

    .line 272
    :catch_da
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal State Exception Occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 275
    goto :goto_d9

    .line 276
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_f8
    move-exception v1

    .line 277
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occured while SecMediaRecorder Prepare()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 279
    goto :goto_d9
.end method

.method public releaseMediaRecorder()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "releaseMediaRecorder..."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 422
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 423
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 424
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 426
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 427
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$502(Lcom/android/phone/PhoneVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 429
    :cond_3a
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "run"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 226
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 228
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$400(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    :goto_25
    sput-boolean v2, Lcom/android/phone/PhoneVoiceRecorder;->mIsPreparing:Z

    .line 241
    return-void

    .line 233
    :cond_28
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "startRecording failed"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 234
    sput-boolean v2, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    goto :goto_25

    .line 237
    :cond_32
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v1, "prepareRecording failed"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 238
    sput-boolean v2, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    goto :goto_25
.end method

.method public startRecording()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 286
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_b} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_27

    .line 296
    sput-boolean v2, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 297
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J
    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$702(Lcom/android/phone/PhoneVoiceRecorder;J)J

    .line 298
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v4, "startRecording"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 299
    :goto_1d
    return v2

    .line 287
    :catch_1e
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 289
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 290
    goto :goto_1d

    .line 291
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_27
    move-exception v1

    .line 292
    .local v1, re:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 293
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    move v2, v3

    .line 294
    goto :goto_1d
.end method

.method public stopRecording()Z
    .registers 18

    .prologue
    .line 316
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v12}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 317
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_7c

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "Recording stopped"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    .line 326
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".amr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    .line 328
    const/4 v4, 0x0

    .line 329
    .local v4, hiddenFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 331
    .local v9, saveFile:Ljava/io/File;
    :try_start_4c
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 332
    .local v8, retriever:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 334
    const/4 v11, 0x0

    .line 335
    .local v11, value:Ljava/lang/String;
    const/16 v12, 0x9

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 336
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 337
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v2, v12

    .line 339
    .local v2, fileDuration:J
    const-wide/16 v12, 0x3e8

    cmp-long v12, v2, v12

    if-gez v12, :cond_9d

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "fileDuration > 1000, failed to save record"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_7a} :catch_ee

    .line 342
    const/4 v12, 0x0

    .line 395
    .end local v2           #fileDuration:J
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v9           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    :goto_7b
    return v12

    .line 319
    :catch_7c
    move-exception v1

    .line 320
    .local v1, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mRecorder.stop() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 322
    const/4 v12, 0x0

    goto :goto_7b

    .line 344
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fileDuration:J
    .restart local v4       #hiddenFile:Ljava/io/File;
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v9       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_9d
    :try_start_9d
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a6} :catch_ee

    .line 345
    .end local v4           #hiddenFile:Ljava/io/File;
    .local v5, hiddenFile:Ljava/io/File;
    :try_start_a6
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_1d4

    .line 346
    .end local v9           #saveFile:Ljava/io/File;
    .local v10, saveFile:Ljava/io/File;
    :try_start_af
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_c4

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "Hidden file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 349
    const/4 v12, 0x0

    goto :goto_7b

    .line 351
    :cond_c4
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_d9

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "Save file doesn\'t exist"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 354
    const/4 v12, 0x0

    goto :goto_7b

    .line 356
    :cond_d9
    invoke-virtual {v5, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 357
    .local v7, resMove:Z
    if-nez v7, :cond_110

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "resMove failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_ec} :catch_1d8

    .line 360
    const/4 v12, 0x0

    goto :goto_7b

    .line 362
    .end local v2           #fileDuration:J
    .end local v5           #hiddenFile:Ljava/io/File;
    .end local v7           #resMove:Z
    .end local v8           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v10           #saveFile:Ljava/io/File;
    .end local v11           #value:Ljava/lang/String;
    .restart local v4       #hiddenFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_ee
    move-exception v1

    .line 363
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_ef
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error occurred while moving temp file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 365
    const/4 v12, 0x0

    goto/16 :goto_7b

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v2       #fileDuration:J
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v7       #resMove:Z
    .restart local v8       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v10       #saveFile:Ljava/io/File;
    .restart local v11       #value:Ljava/lang/String;
    :cond_110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "Recording file created"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 369
    :try_start_11a
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v6, mediaStore:Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v12, "mime_type"

    const-string v13, "audio/amr"

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v12, "_data"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v12, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    const-string v12, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    const-string v12, "date_modified"

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    const-string v12, "is_sound"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v12}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    if-nez v12, :cond_1c8

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "Content Resolver insert failed"

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_19a

    .line 382
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_19a} :catch_19d

    .line 384
    :cond_19a
    const/4 v12, 0x0

    goto/16 :goto_7b

    .line 386
    .end local v6           #mediaStore:Landroid/content/ContentValues;
    :catch_19d
    move-exception v1

    .line 387
    .restart local v1       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error occurred while input data to MediaStore"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;Z)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_1c5

    .line 390
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 392
    :cond_1c5
    const/4 v12, 0x0

    goto/16 :goto_7b

    .line 394
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #mediaStore:Landroid/content/ContentValues;
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-string v13, "Recording saved"

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V

    .line 395
    const/4 v12, 0x1

    goto/16 :goto_7b

    .line 362
    .end local v6           #mediaStore:Landroid/content/ContentValues;
    .end local v7           #resMove:Z
    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    :catch_1d4
    move-exception v1

    move-object v4, v5

    .end local v5           #hiddenFile:Ljava/io/File;
    .restart local v4       #hiddenFile:Ljava/io/File;
    goto/16 :goto_ef

    .end local v4           #hiddenFile:Ljava/io/File;
    .end local v9           #saveFile:Ljava/io/File;
    .restart local v5       #hiddenFile:Ljava/io/File;
    .restart local v10       #saveFile:Ljava/io/File;
    :catch_1d8
    move-exception v1

    move-object v9, v10

    .end local v10           #saveFile:Ljava/io/File;
    .restart local v9       #saveFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #hiddenFile:Ljava/io/File;
    .restart local v4       #hiddenFile:Ljava/io/File;
    goto/16 :goto_ef
.end method
