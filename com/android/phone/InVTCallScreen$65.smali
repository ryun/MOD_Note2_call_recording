.class Lcom/android/phone/InVTCallScreen$65;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->swipeSurfaceViewAnimated()V
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
    .line 15027
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 15030
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 15031
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 15032
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 15034
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 15035
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 15039
    :cond_31
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 15040
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 15042
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationNear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 15043
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationFar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 15044
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationNear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 15045
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationFar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 15046
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationNear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15047
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$65;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationFar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15048
    return-void
.end method
