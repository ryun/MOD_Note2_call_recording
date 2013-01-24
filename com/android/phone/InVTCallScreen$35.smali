.class Lcom/android/phone/InVTCallScreen$35;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 11288
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v1, 0x28

    const/16 v2, 0xa

    const/high16 v5, 0x4120

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11290
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 11291
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1fc

    .line 11375
    :cond_1f
    :goto_1f
    return v3

    .line 11293
    :pswitch_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9502(I)I

    .line 11294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9602(I)I

    goto :goto_1f

    .line 11297
    :pswitch_31
    const-string v0, "InVTCallScreen"

    const-string v1, "Action Move got fired so no context Menu created "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11298
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9708()I

    .line 11299
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9700()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1f

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9500()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_1f

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9600()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_1f

    .line 11302
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$9802(Z)Z

    goto :goto_1f

    .line 11306
    :pswitch_67
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$9802(Z)Z

    .line 11307
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$9702(I)I

    .line 11308
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 11309
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9902(Lcom/android/phone/InVTCallScreen;I)I

    .line 11310
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10002(Lcom/android/phone/InVTCallScreen;I)I

    .line 11312
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10000(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    #setter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10102(Lcom/android/phone/InVTCallScreen;I)I

    .line 11313
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x64

    #setter for: Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10202(Lcom/android/phone/InVTCallScreen;I)I

    .line 11315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_142

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_142

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_142

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_142

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$9600()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_142

    .line 11327
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-nez v0, :cond_142

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-nez v0, :cond_142

    :cond_11a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsFirstVideoFrameDecoded:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 11328
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_142

    .line 11329
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 11330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$6002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11334
    :goto_13d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceViewAnimated()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)V

    .line 11370
    :cond_142
    :goto_142
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11371
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$9402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_1f

    .line 11332
    :cond_14e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$6002(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_13d

    .line 11341
    :cond_154
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 11342
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9902(Lcom/android/phone/InVTCallScreen;I)I

    .line 11343
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10002(Lcom/android/phone/InVTCallScreen;I)I

    .line 11345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_142

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_142

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_142

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10000(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_142

    .line 11357
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-nez v0, :cond_142

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_1cc

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-nez v0, :cond_142

    :cond_1cc
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsFirstVideoFrameDecoded:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 11358
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_142

    .line 11359
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 11360
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$6002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11364
    :goto_1ef
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceViewAnimated()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_142

    .line 11362
    :cond_1f6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$35;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$6002(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_1ef

    .line 11291
    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_20
        :pswitch_67
        :pswitch_31
    .end packed-switch
.end method
