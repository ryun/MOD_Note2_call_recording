.class Lcom/android/phone/VE_ContentManager$2;
.super Ljava/lang/Object;
.source "VE_ContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VE_ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VE_ContentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/VE_ContentManager;)V
    .registers 2
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 587
    const/4 v0, 0x1

    .line 588
    .local v0, bCheck:Z
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->getDownloadContentSize()I
    invoke-static {v4}, Lcom/android/phone/VE_ContentManager;->access$3200(Lcom/android/phone/VE_ContentManager;)I

    move-result v4

    #setter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3, v4}, Lcom/android/phone/VE_ContentManager;->access$202(Lcom/android/phone/VE_ContentManager;I)I

    .line 590
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isFileExists:Z
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$3300(Lcom/android/phone/VE_ContentManager;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 591
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 593
    .local v1, length:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_67

    .line 594
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_67

    .line 595
    const/4 v3, 0x3

    const-string v4, "VE_ContentManager"

    const-string v5, "DB no have data, but file in the DIR"

    invoke-static {v3, v4, v5}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v4

    long-to-int v5, v1

    #calls: Lcom/android/phone/VE_ContentManager;->insertContentDB(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/VE_ContentManager;->access$800(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;I)V

    .line 597
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$3400(Lcom/android/phone/VE_ContentManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 599
    const/4 v0, 0x0

    .line 604
    .end local v1           #length:J
    :cond_67
    if-eqz v0, :cond_7c

    .line 605
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    if-nez v3, :cond_7d

    .line 606
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$3400(Lcom/android/phone/VE_ContentManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 610
    :cond_7c
    :goto_7c
    return-void

    .line 608
    :cond_7d
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$2;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$3400(Lcom/android/phone/VE_ContentManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7c
.end method
