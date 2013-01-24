.class Lcom/android/phone/InVTCallScreen$38;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 11517
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11519
    const-string v0, "InVTCallScreen"

    const-string v1, "IN SURFACECHANGED method under surfaceCallback ===========================>"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11531
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v4, :cond_9f

    .line 11532
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_6e

    .line 11533
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "own_video_receivedcall"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mOwnVideoReceivedCall:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$11502(Lcom/android/phone/InVTCallScreen;I)I

    .line 11535
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mOwnVideoReceivedCall:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-eqz v0, :cond_57

    :cond_36
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7700(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 11537
    :cond_57
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)V

    .line 11538
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_6e

    .line 11539
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11569
    :cond_6e
    :goto_6e
    return-void

    .line 11541
    :cond_6f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 11542
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside surfaceChanged: Send Live Video"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11543
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11545
    :cond_8f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsNearEndTransparent:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 11546
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_6e

    .line 11551
    :cond_9f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 11552
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside surfaceChanged: Send Live Video"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11553
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11554
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x3

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7502(Lcom/android/phone/InVTCallScreen;I)I

    .line 11557
    :cond_c5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsNearEndTransparent:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 11558
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 11561
    :cond_d4
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11800(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11800(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 11562
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_113

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_113

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsFarEndTransparent:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 11563
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11566
    :cond_113
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->showDialpad:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-ne v0, v4, :cond_6e

    .line 11567
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->showDTMFDialpad()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_6e
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "holder"

    .prologue
    .line 11572
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside Surface Create."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11573
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_8b

    .line 11574
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside near_endsurhldr surfaceCreated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11575
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 11576
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 11577
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11581
    :cond_45
    :goto_45
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Height"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11595
    :cond_7f
    :goto_7f
    return-void

    .line 11579
    :cond_80
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_45

    .line 11583
    :cond_8b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_7f

    .line 11584
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside far_endsurhldr surfaceCreated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11585
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 11586
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11592
    :cond_c1
    :goto_c1
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Height"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 11588
    :cond_fc
    const-string v0, "InVTCallScreen"

    const-string v1, "VTManager.SetPreviewDisplay for Far end View"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11589
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 11590
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_c1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 11598
    const-string v0, "InVTCallScreen"

    const-string v1, "Into Surface Destroyed"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11600
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 11601
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 11602
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$38;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 11604
    :cond_21
    return-void
.end method
