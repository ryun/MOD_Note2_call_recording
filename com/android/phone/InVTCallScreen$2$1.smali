.class Lcom/android/phone/InVTCallScreen$2$1;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/InVTCallScreen$2;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$2$1;->this$1:Lcom/android/phone/InVTCallScreen$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$2$1;->this$1:Lcom/android/phone/InVTCallScreen$2;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1648
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$2$1;->this$1:Lcom/android/phone/InVTCallScreen$2;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1649
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$2$1;->this$1:Lcom/android/phone/InVTCallScreen$2;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1650
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$2$1;->this$1:Lcom/android/phone/InVTCallScreen$2;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1651
    return-void
.end method
