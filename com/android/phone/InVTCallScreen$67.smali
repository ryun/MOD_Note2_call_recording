.class Lcom/android/phone/InVTCallScreen$67;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->hideIncomingCallWidget()V
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
    .line 15323
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 15335
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/IncomingCallWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 15336
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17200(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/IncomingCallWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 15337
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 15331
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 15327
    return-void
.end method
