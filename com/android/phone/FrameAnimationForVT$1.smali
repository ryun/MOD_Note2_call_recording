.class Lcom/android/phone/FrameAnimationForVT$1;
.super Ljava/lang/Object;
.source "FrameAnimationForVT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FrameAnimationForVT;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FrameAnimationForVT;


# direct methods
.method constructor <init>(Lcom/android/phone/FrameAnimationForVT;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$100(Lcom/android/phone/FrameAnimationForVT;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/phone/FrameAnimationForVT;->access$002(Lcom/android/phone/FrameAnimationForVT;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mShouldRun:Z
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$200(Lcom/android/phone/FrameAnimationForVT;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_28

    .line 78
    :cond_21
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/FrameAnimationForVT;->access$302(Lcom/android/phone/FrameAnimationForVT;Z)Z

    .line 87
    :goto_27
    return-void

    .line 82
    :cond_28
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/FrameAnimationForVT;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/FrameAnimationForVT;->access$302(Lcom/android/phone/FrameAnimationForVT;Z)Z

    .line 83
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 84
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$000(Lcom/android/phone/FrameAnimationForVT;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #calls: Lcom/android/phone/FrameAnimationForVT;->getNext()I
    invoke-static {v1}, Lcom/android/phone/FrameAnimationForVT;->access$400(Lcom/android/phone/FrameAnimationForVT;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :cond_49
    iget-object v0, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/FrameAnimationForVT;->access$600(Lcom/android/phone/FrameAnimationForVT;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FrameAnimationForVT$1;->this$0:Lcom/android/phone/FrameAnimationForVT;

    #getter for: Lcom/android/phone/FrameAnimationForVT;->mDelay:I
    invoke-static {v1}, Lcom/android/phone/FrameAnimationForVT;->access$500(Lcom/android/phone/FrameAnimationForVT;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27
.end method
