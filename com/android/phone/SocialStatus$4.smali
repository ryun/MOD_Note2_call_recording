.class Lcom/android/phone/SocialStatus$4;
.super Ljava/lang/Object;
.source "SocialStatus.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SocialStatus;->closeSocialStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SocialStatus;


# direct methods
.method constructor <init>(Lcom/android/phone/SocialStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/phone/SocialStatus$4;->this$0:Lcom/android/phone/SocialStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/phone/SocialStatus$4;->this$0:Lcom/android/phone/SocialStatus;

    #getter for: Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/phone/SocialStatus;->access$000(Lcom/android/phone/SocialStatus;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/phone/SocialStatus$4;->this$0:Lcom/android/phone/SocialStatus;

    #getter for: Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/SocialStatus;->access$300(Lcom/android/phone/SocialStatus;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/SocialStatus$4;->this$0:Lcom/android/phone/SocialStatus;

    #getter for: Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/SocialStatus;->access$200(Lcom/android/phone/SocialStatus;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SocialStatus$4;->this$0:Lcom/android/phone/SocialStatus;

    #getter for: Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;
    invoke-static {v1}, Lcom/android/phone/SocialStatus;->access$100(Lcom/android/phone/SocialStatus;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    return-void
.end method
