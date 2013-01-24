.class public Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
.super Landroid/os/CountDownTimer;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightZoomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InVTCallScreen;JJ)V
    .registers 6
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 14148
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    .line 14149
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 14151
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 14155
    const-string v0, "InVTCallScreen"

    const-string v1, "Count down timer is finished"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14156
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 14157
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14159
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEmotionalAniLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 14160
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEmotionalAniLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14162
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 14163
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14165
    :cond_3c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-nez v0, :cond_51

    .line 14166
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMainLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMainLayoutNormalDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$16600(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14167
    :cond_51
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$16002(Lcom/android/phone/InVTCallScreen;I)I

    .line 14168
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 14172
    const-string v0, "InVTCallScreen"

    const-string v1, "In onTick of countdown timer"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14174
    return-void
.end method
