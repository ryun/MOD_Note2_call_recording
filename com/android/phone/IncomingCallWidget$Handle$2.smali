.class Lcom/android/phone/IncomingCallWidget$Handle$2;
.super Landroid/os/Handler;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 570
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v5, "handleMessage"

    #calls: Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v7}, Lcom/android/phone/IncomingCallWidget;->access$200(Lcom/android/phone/IncomingCallWidget;Ljava/lang/String;Z)V

    .line 571
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_7a

    .line 608
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 611
    :cond_16
    :goto_16
    return-void

    .line 573
    :sswitch_17
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$300(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 577
    const/4 v1, 0x0

    .line 579
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    if-ge v2, v8, :cond_4e

    .line 580
    const/4 v3, 0x0

    .line 581
    .local v3, index:I
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$400(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v4

    if-ne v4, v7, :cond_58

    .line 582
    move v3, v2

    .line 586
    :goto_31
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$500(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 587
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 588
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_63

    .line 589
    :cond_45
    add-int/lit8 v4, v2, 0x1

    if-eq v8, v4, :cond_5d

    .line 590
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    .line 599
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_4e
    :goto_4e
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$600(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_16

    .line 584
    .restart local v3       #index:I
    :cond_58
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    goto :goto_31

    .line 593
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_5d
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4e

    .line 579
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 603
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v1           #arrowImage:Landroid/widget/ImageView;
    .end local v2           #i:I
    .end local v3           #index:I
    :sswitch_66
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v4, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 604
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v4, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    goto :goto_16

    .line 571
    nop

    :sswitch_data_7a
    .sparse-switch
        0x64 -> :sswitch_17
        0xc8 -> :sswitch_66
    .end sparse-switch
.end method
