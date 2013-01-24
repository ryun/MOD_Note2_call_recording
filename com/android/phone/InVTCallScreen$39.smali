.class Lcom/android/phone/InVTCallScreen$39;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


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
    .line 11608
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x6c

    const v8, 0x7f0e03f8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11610
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "Inside VTStackStateListener"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11611
    const-string v0, "InVTCallScreen:: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChanged State :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11613
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_128

    .line 11615
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_38

    .line 11616
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11618
    :cond_38
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 11619
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0e03f5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11622
    :cond_4c
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11800(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11800(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 11623
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7d

    .line 11624
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x6

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11628
    :cond_7d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsFirstVideoFrameDecoded:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11629
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_e7

    .line 11630
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 11631
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 11632
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11634
    :cond_ad
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_ca

    .line 11635
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11638
    :cond_ca
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 11639
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11643
    :cond_e7
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 11645
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->hideFarEnViewAnim()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12600(Lcom/android/phone/InVTCallScreen;)V

    .line 11646
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2202(Z)Z

    .line 11649
    :cond_f7
    const-string v0, "kor_qc_cs_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 11650
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "H324M_VT_FIRST_VIDEO_FRAME_DECODED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11651
    :cond_10c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11652
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateMuteButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11653
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12077
    :cond_127
    :goto_127
    return-void

    .line 11655
    :cond_128
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_19b

    .line 11658
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 11659
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12800(Lcom/android/phone/InVTCallScreen;)V

    .line 11661
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7700(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_127

    .line 11662
    :cond_151
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11663
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0e03cf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_127

    .line 11668
    :cond_165
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7700(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_183

    .line 11670
    :cond_17d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_127

    .line 11672
    :cond_183
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 11673
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11674
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x3

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7502(Lcom/android/phone/InVTCallScreen;I)I

    goto :goto_127

    .line 11678
    :cond_19b
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_314

    .line 11679
    const-string v0, "InVTCallScreen"

    const-string v3, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11680
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2602(Z)Z

    .line 11682
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsShowEndCallScreenStarted:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 11683
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$13000(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11686
    :cond_1b6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_247

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_247

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13300(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_247

    .line 11691
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 11693
    if-eqz v0, :cond_9fe

    .line 11694
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v4, v0

    .line 11696
    :goto_1df
    if-eqz v4, :cond_9fa

    .line 11697
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9fa

    .line 11698
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 11699
    if-nez v0, :cond_27d

    move v3, v1

    .line 11700
    :goto_1f2
    if-nez v0, :cond_280

    move v0, v1

    .line 11701
    :goto_1f5
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    .line 11703
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v6, v7, :cond_20b

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v6, v7, :cond_20b

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20d

    :cond_20b
    move v0, v2

    move v3, v2

    .line 11712
    :cond_20d
    :goto_20d
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$13100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v3, :cond_283

    move v3, v1

    :goto_216
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11713
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v0, :cond_285

    move v0, v1

    :goto_222
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11714
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 11715
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIpCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_23e

    .line 11716
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIpCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11718
    :cond_23e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13300(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11720
    :cond_247
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_266

    .line 11721
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 11722
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 11723
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0, v5}, Lcom/android/phone/InVTCallScreen;->access$2902(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 11726
    :cond_266
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 11727
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 11728
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_127

    :cond_27d
    move v3, v2

    .line 11699
    goto/16 :goto_1f2

    :cond_280
    move v0, v2

    .line 11700
    goto/16 :goto_1f5

    :cond_283
    move v3, v2

    .line 11712
    goto :goto_216

    :cond_285
    move v0, v2

    .line 11713
    goto :goto_222

    .line 11729
    :cond_287
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2a5

    .line 11730
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)V

    .line 11731
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_127

    .line 11733
    :cond_2a5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1194

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_127

    .line 11738
    :cond_2b2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2c1

    .line 11739
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_127

    .line 11740
    :cond_2c1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2df

    .line 11741
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)V

    .line 11742
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_127

    .line 11743
    :cond_2df
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_307

    .line 11744
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_300

    .line 11745
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1194

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_127

    .line 11750
    :cond_300
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_127

    .line 11753
    :cond_307
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1194

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_127

    .line 11759
    :cond_314
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_32b

    .line 11760
    const-string v0, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11761
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 11762
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_127

    .line 11763
    :cond_32b
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_34e

    .line 11764
    const-string v0, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11765
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11767
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 11768
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_127

    .line 11772
    :cond_34e
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_38c

    .line 11773
    const-string v0, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11774
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11776
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "51010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_383

    .line 11777
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 11778
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_127

    .line 11782
    :cond_383
    const-string v0, "InVTCallScreen"

    const-string v1, "onStateChanged: keep current Call state for special operator of Exception handling[H324M_VT_PROTOCOL_ERR_IND]"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_127

    .line 11785
    :cond_38c
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_3a1

    .line 11786
    const-string v0, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_IC_START_FAILURE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11790
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0e03d1

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_127

    .line 11792
    :cond_3a1
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_45a

    .line 11793
    const-string v0, "InVTCallScreen"

    const-string v3, "onStateChanged: for H324M_IC_START_SUCESS"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11794
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_41c

    .line 11795
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3ee

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_3ee

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3ee

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_3ee

    .line 11797
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$9200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$13902(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11798
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11801
    :cond_3ee
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11803
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_44d

    .line 11804
    const-string v0, "InVTCallScreen"

    const-string v3, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11805
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11806
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$13802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11812
    :goto_40c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$9200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$14002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11813
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7502(Lcom/android/phone/InVTCallScreen;I)I

    .line 11817
    :cond_41c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_441

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndCaptureProgressive:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_441

    .line 11818
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11819
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11820
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isFarEndCaptureProgressive:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$14102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11822
    :cond_441
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11823
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$13702(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_127

    .line 11808
    :cond_44d
    const-string v0, "InVTCallScreen"

    const-string v3, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11809
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5302(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_40c

    .line 11825
    :cond_45a
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_DEACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_484

    .line 11826
    const-string v0, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_DEACTIVATED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11827
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0e04aa

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13902(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11831
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_127

    .line 11832
    :cond_484
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_ACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_4ae

    .line 11833
    const-string v0, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_ACTIVATED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11834
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0e04ab

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13902(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11838
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_127

    .line 11839
    :cond_4ae
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_4fa

    .line 11840
    const-string v0, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_REC_START_FAILURE"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11841
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e03f6

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;I)V

    .line 11842
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4e6

    .line 11843
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11844
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11845
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_127

    .line 11846
    :cond_4e6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 11847
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/phone/InVTCallScreen;->access$14202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11848
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_127

    .line 11851
    :cond_4fa
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_507

    .line 11852
    const-string v0, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_REC_START_SUCCESS"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_127

    .line 11854
    :cond_507
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_557

    .line 11855
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_541

    .line 11856
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11861
    :cond_51f
    :goto_51f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-eqz v0, :cond_529

    .line 11863
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 11865
    :cond_529
    const-string v0, "InVTCallScreen:: "

    const-string v2, "VTMNGR_CAMERA_START_SUCCESS "

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11866
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v1, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11867
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_127

    .line 11858
    :cond_541
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_51f

    .line 11859
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_51f

    .line 11868
    :cond_557
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_578

    .line 11869
    const-string v0, "InVTCallScreen:: "

    const-string v3, "VTMNGR_CAMERA_START_FAILURE"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11870
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11871
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11872
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_127

    .line 11873
    :cond_578
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_65e

    .line 11874
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_STOP_SUCCESS"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11875
    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    .line 11876
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_614

    .line 11877
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v7, 0x7f0e03f7

    invoke-virtual {v6, v7}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$14200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v6, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$13902(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11884
    :goto_5cf
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_5e0

    .line 11885
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11887
    :cond_5e0
    new-array v0, v1, [Ljava/lang/String;

    .line 11888
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 11889
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Lcom/android/phone/InVTCallScreen$39$1;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$39$1;-><init>(Lcom/android/phone/InVTCallScreen$39;)V

    invoke-static {v1, v0, v5, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 11895
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$14302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11897
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14400(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14500(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v0, v1, :cond_643

    .line 11899
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)V

    .line 11900
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14402(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_127

    .line 11881
    :cond_614
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$14200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v6, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$13902(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_5cf

    .line 11901
    :cond_643
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14400(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14700(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v0, v1, :cond_127

    .line 11903
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14800(Lcom/android/phone/InVTCallScreen;)V

    .line 11904
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14402(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_127

    .line 11906
    :cond_65e
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_6c9

    .line 11907
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_MAX_TIMEOUT"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11908
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_676

    .line 11909
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    .line 11911
    :cond_676
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_683

    .line 11912
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11914
    :cond_683
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$14200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13902(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11916
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$14302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11917
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 11918
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_127

    .line 11920
    :cond_6c9
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_731

    .line 11921
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11922
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_6e9

    .line 11923
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72b

    .line 11924
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;)V

    .line 11929
    :cond_6e9
    :goto_6e9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_6f6

    .line 11930
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11932
    :cond_6f6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$14200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$13902(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11934
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$14302(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_127

    .line 11926
    :cond_72b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_6e9

    .line 11936
    :cond_731
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_758

    .line 11937
    const-string v0, "InVTCallScreen:: "

    const-string v2, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11938
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_749

    .line 11939
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    .line 11941
    :cond_749
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 11942
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_127

    .line 11945
    :cond_758
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_789

    .line 11947
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11948
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11949
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)V

    .line 11952
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14900(Lcom/android/phone/InVTCallScreen;)V

    .line 11954
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11955
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x2

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7502(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_127

    .line 11956
    :cond_789
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_7a5

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_7a5

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_7a5

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_7a5

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_7a5

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_7a5

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_815

    .line 11963
    :cond_7a5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f0e03d1

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;I)V

    .line 11965
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 11966
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_805

    .line 11967
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_7ef

    .line 11968
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11969
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11970
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11983
    :goto_7e3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/phone/InVTCallScreen;->access$14002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11984
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_127

    .line 11973
    :cond_7ef
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11974
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$4802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11975
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7e3

    .line 11978
    :cond_805
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11979
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11980
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_7e3

    .line 11986
    :cond_815
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_ALL_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_844

    .line 11987
    const-string v0, "InVTCallScreen"

    const-string v2, "H324M_VT_ALL_OLC_ESTABLISHED"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11988
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isAllOLC:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$15002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11989
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mAllOlcOpened:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$15102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11990
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11991
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xaa

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_127

    .line 11992
    :cond_844
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_START:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_856

    .line 11993
    const-string v0, "InVTCallScreen"

    const-string v2, "H324M_VT_MRBT_START"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11994
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_127

    .line 11995
    :cond_856
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_END:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_8bf

    .line 11996
    const-string v0, "InVTCallScreen"

    const-string v3, "H324M_VT_MRBT_END"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11997
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11998
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 11999
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 12000
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 12001
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMRBTTimer()V

    .line 12002
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 12003
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_8ac

    .line 12004
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 12006
    :cond_8ac
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 12007
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_127

    .line 12011
    :cond_8bf
    const-string v0, "kor_cs_vt_network_operator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8dd

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_VMS_MODE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_8dd

    .line 12013
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_8d8

    const-string v0, "InVTCallScreen"

    const-string v2, "VTMNGR_VMS_MODE"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12014
    :cond_8d8
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$11402(Z)Z

    goto/16 :goto_127

    .line 12016
    :cond_8dd
    const-string v0, "kor_cs_vt_network_operator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_127

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_USER_INDICATION:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_127

    .line 12018
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_8f6

    const-string v0, "InVTCallScreen"

    const-string v2, "onUserIndication"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12019
    :cond_8f6
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_918

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12020
    :cond_918
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_93a

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12021
    :cond_93a
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_95c

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user data len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12023
    :cond_95c
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode()I

    move-result v0

    if-ne v0, v1, :cond_127

    .line 12025
    const-string v0, ".*VMode_0.*"

    .line 12026
    const-string v1, ".*VMode_1.*"

    .line 12027
    const-string v2, ".*VMode_2.*"

    .line 12028
    const-string v3, ".*VMode_3.*"

    .line 12029
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    .line 12030
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getDataLen()I

    .line 12032
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v4, v4, Lcom/android/phone/InVTCallScreen;->isRemoteModeControl:Z

    if-eqz v4, :cond_9eb

    .line 12034
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v4

    if-eqz v4, :cond_983

    const-string v4, "InVTCallScreen"

    const-string v5, "isRemoteModeControl true"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12035
    :cond_983
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_994

    .line 12037
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Old()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15200(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_127

    .line 12039
    :cond_994
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9ac

    .line 12041
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 12042
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Big()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_127

    .line 12044
    :cond_9ac
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c4

    .line 12046
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 12047
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Small()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_127

    .line 12049
    :cond_9c4
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9dc

    .line 12051
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 12052
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$39;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_BigOnly()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15500(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_127

    .line 12056
    :cond_9dc
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, "InVTCallScreen"

    const-string v1, "Not support VMode"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_127

    .line 12061
    :cond_9eb
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v0

    if-eqz v0, :cond_127

    const-string v0, "InVTCallScreen"

    const-string v1, "isRemoteModeControl false"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_127

    :cond_9fa
    move v0, v1

    move v3, v1

    goto/16 :goto_20d

    :cond_9fe
    move-object v4, v5

    goto/16 :goto_1df
.end method
