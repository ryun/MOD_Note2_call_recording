.class Lcom/android/phone/InVTCallScreen$66;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
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
    .line 15221
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 15224
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_72

    .line 15245
    :goto_9
    return-void

    .line 15226
    :sswitch_a
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$16900(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_42

    .line 15227
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$16900(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_40

    :goto_23
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15229
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 15230
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15232
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16908(Lcom/android/phone/InVTCallScreen;)I

    goto :goto_9

    :cond_40
    move v0, v1

    .line 15227
    goto :goto_23

    .line 15234
    :cond_42
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15235
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15236
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$16902(Lcom/android/phone/InVTCallScreen;I)I

    goto :goto_9

    .line 15240
    :sswitch_67
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$66;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$17100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 15224
    nop

    :sswitch_data_72
    .sparse-switch
        0x64 -> :sswitch_a
        0x12c -> :sswitch_67
    .end sparse-switch
.end method
