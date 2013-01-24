.class Lcom/android/phone/InVTCallScreen$36;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
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
    .line 11380
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "v"

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 11384
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9800()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 11385
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 11386
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 11387
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_6a

    .line 11388
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image and isSurfaceViewSwipe is true"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11391
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11393
    const-string v0, "vt_adjust_camera_contrast_brightness"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 11394
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCameraAdjust:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 11401
    :goto_4a
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$11102(Z)Z

    .line 11402
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 11403
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 11487
    :cond_6a
    :goto_6a
    return v3

    .line 11396
    :cond_6b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 11397
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_4a

    .line 11399
    :cond_85
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11000(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_4a

    .line 11407
    :cond_97
    const-string v0, "InVTCallScreen"

    const-string v1, "In onLongClick of far_endsurview "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11409
    const-string v0, "lawmo_lock"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 11411
    :cond_b0
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 11412
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUpposAudioRecord:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11200(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 11416
    :goto_c9
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$11102(Z)Z

    .line 11418
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 11420
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$11400()Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$2200()Z

    move-result v0

    if-ne v0, v2, :cond_6a

    .line 11421
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_6a

    .line 11414
    :cond_ef
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11300(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_c9

    .line 11426
    :cond_101
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 11427
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_6a

    .line 11435
    :cond_118
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 11436
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 11437
    const-string v0, "InVTCallScreen"

    const-string v1, "In onLongClick of far_endsurview "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11438
    const-string v0, "lawmo_lock"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 11440
    :cond_141
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 11441
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUpposAudioRecord:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11200(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 11445
    :goto_15a
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$11102(Z)Z

    .line 11447
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 11449
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$11400()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 11450
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_6a

    .line 11443
    :cond_17a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11300(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_15a

    .line 11455
    :cond_18c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 11456
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_6a

    .line 11460
    :cond_1a3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_6a

    .line 11461
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for near end surface view  for Own Image isSurfaceViewSwipe is false"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11463
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside onLongClick of OnLongClickListener for Own Image"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11474
    const-string v0, "vt_adjust_camera_contrast_brightness"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 11475
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCameraAdjust:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    .line 11479
    :goto_1d2
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$11102(Z)Z

    .line 11480
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 11481
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_6a

    .line 11477
    :cond_1f4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$36;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1d2
.end method
