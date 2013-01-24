.class Lcom/android/phone/VE_ContentManager$1;
.super Landroid/os/Handler;
.source "VE_ContentManager.java"


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
    .line 316
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 319
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x11e6

    if-ge v1, v2, :cond_12

    .line 320
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$000(Lcom/android/phone/VE_ContentManager;I)V

    .line 322
    :cond_12
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_37a

    .line 507
    :cond_17
    :goto_17
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 508
    return-void

    .line 324
    :sswitch_1b
    const-string v1, "VE_ContentManager"

    const-string v2, "start get download content file size info"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->getDownloadContentSize_Runnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$100(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_17

    .line 329
    :sswitch_31
    const-string v1, "VE_ContentManager"

    const-string v2, "get download content file size info fail"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 333
    :sswitch_39
    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get download content file size info done, mDownloadFile_Size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->check_FreeMemory()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$300(Lcom/android/phone/VE_ContentManager;)V

    goto :goto_17

    .line 340
    :sswitch_5d
    const-string v1, "VE_ContentManager"

    const-string v2, "start download content file"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->download_Content_Runnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_17

    .line 345
    :sswitch_73
    const-string v1, "VE_ContentManager"

    const-string v2, "no enough memory for save content file"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 347
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v2

    #calls: Lcom/android/phone/VE_ContentManager;->removeContent(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$500(Lcom/android/phone/VE_ContentManager;I)V

    goto :goto_17

    .line 348
    :cond_8e
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 349
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    #calls: Lcom/android/phone/VE_ContentManager;->removeContent(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$500(Lcom/android/phone/VE_ContentManager;I)V

    goto/16 :goto_17

    .line 351
    :cond_a5
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "unknown feature"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/16 v2, 0x63

    #calls: Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$000(Lcom/android/phone/VE_ContentManager;I)V

    goto/16 :goto_17

    .line 357
    :sswitch_b6
    const-string v1, "VE_ContentManager"

    const-string v2, "download content fail"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$700(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Z

    goto/16 :goto_17

    .line 362
    :sswitch_dd
    const-string v1, "VE_ContentManager"

    const-string v2, "download content done"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    #calls: Lcom/android/phone/VE_ContentManager;->insertContentDB(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_ContentManager;->access$800(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;I)V

    .line 364
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->initAmfPlayer()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$900(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 368
    :sswitch_fc
    const-string v1, "VE_ContentManager"

    const-string v2, "content exist"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->initAmfPlayer()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$900(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 373
    :sswitch_10a
    const-string v1, "VE_ContentManager"

    const-string v2, "codec load complete"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->initBuffer()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1000(Lcom/android/phone/VE_ContentManager;)V

    .line 375
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1100(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 379
    :sswitch_11d
    const-string v1, "VE_ContentManager"

    const-string v2, "codec load faild"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->removeUnusualContent()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1200(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 384
    :sswitch_12b
    const-string v1, "VE_ContentManager"

    const-string v2, "wait incallscreen created"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 388
    :sswitch_134
    const-string v1, "VE_ContentManager"

    const-string v2, "is skm file format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1100(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 394
    :sswitch_142
    const-string v1, "VE_ContentManager"

    const-string v2, "download content fail and disconnect"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$700(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Z

    goto/16 :goto_17

    .line 399
    :sswitch_169
    const-string v1, "VE_ContentManager"

    const-string v2, "download content done and disconnect"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I
    invoke-static {v3}, Lcom/android/phone/VE_ContentManager;->access$200(Lcom/android/phone/VE_ContentManager;)I

    move-result v3

    #calls: Lcom/android/phone/VE_ContentManager;->insertContentDB(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_ContentManager;->access$800(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;I)V

    goto/16 :goto_17

    .line 404
    :sswitch_183
    const-string v1, "VE_ContentManager"

    const-string v2, "CLASS_STATE_MEDIAPLAY_ERROR"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_1b4

    .line 406
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 408
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 409
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1, v3}, Lcom/android/phone/VE_ContentManager;->access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 411
    :cond_1b4
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenMediaError()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1400(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 414
    :sswitch_1bb
    const-string v1, "VE_ContentManager"

    const-string v2, "CLASS_STATE_INIT_JPG_COMPLETE"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1100(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 419
    :sswitch_1c9
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e5

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ec

    .line 420
    :cond_1e5
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->start_Play_SKM()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1600(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 421
    :cond_1ec
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "am3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_208

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20f

    .line 423
    :cond_208
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->start_Play_AM3()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1700(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 424
    :cond_20f
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22b

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 425
    :cond_22b
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->start_Play_JPG()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1800(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 431
    :sswitch_232
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->ExitProgram:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$1902(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 432
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z
    invoke-static {v1, v6}, Lcom/android/phone/VE_ContentManager;->access$2002(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 433
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$2102(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 435
    const/4 v1, 0x4

    :try_start_242
    const-string v2, "VE_ContentManager"

    const-string v3, "stop play content"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2202(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 437
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2302(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 439
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2402(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$2600(Lcom/android/phone/VE_ContentManager;)Z

    move-result v2

    #setter for: Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2502(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 443
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v1

    if-eqz v1, :cond_279

    .line 444
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2800(Lcom/android/phone/VE_ContentManager;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    :cond_279
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_2bb

    .line 448
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2bb

    .line 449
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 450
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 451
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 452
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 458
    :cond_2bb
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2900(Lcom/android/phone/VE_ContentManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_2cc

    .line 459
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2900(Lcom/android/phone/VE_ContentManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_2cc
    .catch Ljava/lang/NullPointerException; {:try_start_242 .. :try_end_2cc} :catch_2d5

    .line 468
    :cond_2cc
    :goto_2cc
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    const/16 v2, 0x63

    #calls: Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$000(Lcom/android/phone/VE_ContentManager;I)V

    goto/16 :goto_17

    .line 461
    :catch_2d5
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE_MSG_STOP_PLAY event has NullPointerException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2cc

    .line 472
    .end local v0           #e:Ljava/lang/NullPointerException;
    :sswitch_2f3
    const-string v1, "VE_ContentManager"

    const-string v2, "pause play content"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isOnPause:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$3002(Lcom/android/phone/VE_ContentManager;Z)Z

    goto/16 :goto_17

    .line 477
    :sswitch_301
    const-string v1, "VE_ContentManager"

    const-string v2, "resume play content"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isOnPause:Z
    invoke-static {v1, v6}, Lcom/android/phone/VE_ContentManager;->access$3002(Lcom/android/phone/VE_ContentManager;Z)Z

    goto/16 :goto_17

    .line 482
    :sswitch_30f
    const-string v1, "VE_ContentManager"

    const-string v2, "incallscreen is ready"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z
    invoke-static {v1, v7}, Lcom/android/phone/VE_ContentManager;->access$2002(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 485
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 486
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->doCheck()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$3100(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 490
    :sswitch_32a
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2800(Lcom/android/phone/VE_ContentManager;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v2, v2, Lcom/android/phone/VE_ContentManager;->mBitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_17

    .line 494
    :sswitch_339
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2100(Lcom/android/phone/VE_ContentManager;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 495
    const-string v1, "VE_ContentManager"

    const-string v2, "do not receive onPrepared()"

    invoke-static {v5, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_372

    .line 497
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 499
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 500
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1, v3}, Lcom/android/phone/VE_ContentManager;->access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 502
    :cond_372
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$1;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenMediaError()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$1400(Lcom/android/phone/VE_ContentManager;)V

    goto/16 :goto_17

    .line 322
    nop

    :sswitch_data_37a
    .sparse-switch
        0x64 -> :sswitch_1b
        0x65 -> :sswitch_39
        0x66 -> :sswitch_31
        0x68 -> :sswitch_5d
        0x69 -> :sswitch_73
        0x6a -> :sswitch_dd
        0x6b -> :sswitch_b6
        0x6c -> :sswitch_fc
        0x6d -> :sswitch_10a
        0x6e -> :sswitch_11d
        0x70 -> :sswitch_12b
        0x71 -> :sswitch_134
        0x72 -> :sswitch_142
        0x73 -> :sswitch_169
        0x74 -> :sswitch_183
        0x75 -> :sswitch_1bb
        0xc8 -> :sswitch_32a
        0x12c -> :sswitch_339
        0x11eb -> :sswitch_1c9
        0x11ec -> :sswitch_232
        0x11ed -> :sswitch_2f3
        0x11ee -> :sswitch_301
        0x11ef -> :sswitch_30f
    .end sparse-switch
.end method
