.class Lcom/android/phone/InCallTouchUi$3;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallTouchUi;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$700(Lcom/android/phone/InCallTouchUi;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020197

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 338
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 339
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$3;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$800(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 342
    :cond_26
    return-void
.end method
