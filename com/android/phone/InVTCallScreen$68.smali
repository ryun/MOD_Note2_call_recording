.class Lcom/android/phone/InVTCallScreen$68;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


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
    .line 15520
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15523
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 15551
    :goto_7
    return-void

    .line 15525
    :pswitch_8
    const-string v0, "InVTCallScreen"

    const-string v1, "mSurfaceHandler::In SHOW_CAMERA_NEAREND condition"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15526
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showCameraOnNearEndView(Landroid/view/SurfaceHolder;)V

    goto :goto_7

    .line 15529
    :pswitch_19
    const-string v0, "InVTCallScreen"

    const-string v1, "mSurfaceHandler::In SHOW_CAMERA_FAREND condition"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15530
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showCameraOnFarEndView(Landroid/view/SurfaceHolder;)V

    goto :goto_7

    .line 15533
    :pswitch_2a
    const-string v0, "InVTCallScreen"

    const-string v1, "mSurfaceHandler::In SHOW_PREVIEW_NEAREND condition"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15534
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showPreviewOnNearEndView(Landroid/view/SurfaceHolder;)V

    goto :goto_7

    .line 15537
    :pswitch_3b
    const-string v0, "InVTCallScreen"

    const-string v1, "mSurfaceHandler::In SHOW_PREVIEW_FAREND condition"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15538
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->showPreviewOnFarEndView(Landroid/view/SurfaceHolder;)V

    goto :goto_7

    .line 15541
    :pswitch_4c
    const-string v0, "InVTCallScreen"

    const-string v1, "mSurfaceHandler::In SET_NEAREND_SURFACE_TRANSPARENT condition"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15542
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 15543
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsNearEndTransparent:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$11702(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_7

    .line 15546
    :pswitch_60
    const-string v0, "InVTCallScreen"

    const-string v1, "mSurfaceHandler::In SET_FAREND_SURFACE_TRANSPARENT condition"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15547
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 15548
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$68;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsFarEndTransparent:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$11902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_7

    .line 15523
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_8
        :pswitch_19
        :pswitch_2a
        :pswitch_3b
        :pswitch_4c
        :pswitch_60
    .end packed-switch
.end method
