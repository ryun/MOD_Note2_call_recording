.class Lcom/android/phone/CallReminderWidget$Handle$2;
.super Landroid/os/Handler;
.source "CallReminderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallReminderWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallReminderWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/CallReminderWidget$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget$Handle$2;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

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

    .line 554
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle$2;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    const-string v5, "handleMessage"

    #calls: Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v7}, Lcom/android/phone/CallReminderWidget;->access$300(Lcom/android/phone/CallReminderWidget;Ljava/lang/String;Z)V

    .line 555
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_6e

    .line 588
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 591
    :goto_16
    return-void

    .line 557
    :sswitch_17
    const/4 v1, 0x0

    .line 559
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v8, :cond_42

    .line 560
    const/4 v3, 0x0

    .line 561
    .local v3, index:I
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle$2;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    #getter for: Lcom/android/phone/CallReminderWidget$Handle;->mHandleType:I
    invoke-static {v4}, Lcom/android/phone/CallReminderWidget$Handle;->access$400(Lcom/android/phone/CallReminderWidget$Handle;)I

    move-result v4

    if-ne v4, v7, :cond_4c

    .line 562
    move v3, v2

    .line 566
    :goto_25
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle$2;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    #getter for: Lcom/android/phone/CallReminderWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/phone/CallReminderWidget$Handle;->access$500(Lcom/android/phone/CallReminderWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 567
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 568
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_57

    .line 569
    :cond_39
    add-int/lit8 v4, v2, 0x1

    if-eq v8, v4, :cond_51

    .line 570
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/phone/CallReminderWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    .line 579
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_42
    :goto_42
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle$2;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    #calls: Lcom/android/phone/CallReminderWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/android/phone/CallReminderWidget$Handle;->access$600(Lcom/android/phone/CallReminderWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_16

    .line 564
    .restart local v3       #index:I
    :cond_4c
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    goto :goto_25

    .line 573
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_51
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/phone/CallReminderWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_42

    .line 559
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 583
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v1           #arrowImage:Landroid/widget/ImageView;
    .end local v2           #i:I
    .end local v3           #index:I
    :sswitch_5a
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle$2;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    iget-object v4, v4, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 584
    iget-object v4, p0, Lcom/android/phone/CallReminderWidget$Handle$2;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    iget-object v4, v4, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    goto :goto_16

    .line 555
    nop

    :sswitch_data_6e
    .sparse-switch
        0x64 -> :sswitch_17
        0xc8 -> :sswitch_5a
    .end sparse-switch
.end method
