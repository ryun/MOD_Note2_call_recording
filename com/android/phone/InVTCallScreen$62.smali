.class Lcom/android/phone/InVTCallScreen$62;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 14091
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setScreenBrightness(I)V
    .registers 7
    .parameter "brightness"

    .prologue
    const-wide/high16 v3, 0x4024

    .line 14132
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 14133
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0xa

    if-eq p1, v1, :cond_3f

    .line 14134
    int-to-double v1, p1

    div-double/2addr v1, v3

    const-wide v3, 0x3f94141414141414L

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 14139
    :goto_1b
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp.screenBrightness Changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14140
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 14141
    return-void

    .line 14136
    :cond_3f
    int-to-double v1, p1

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1b
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x1

    .line 14094
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside OnSeekBarChangeListener :: onProgressChanged"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14095
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-nez v0, :cond_4d

    .line 14096
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom control Progress Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14097
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 14098
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 14114
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->cancel()V

    .line 14115
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 14116
    return-void

    .line 14100
    :cond_4d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v3, :cond_7f

    .line 14101
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness control Progress Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14102
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 14103
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_3a

    .line 14105
    :cond_7f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b3

    .line 14106
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contrast control Progress Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14107
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 14108
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_3a

    .line 14110
    :cond_b3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3a

    .line 14111
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen Brightnesss Progress Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14112
    invoke-direct {p0, p2}, Lcom/android/phone/InVTCallScreen$62;->setScreenBrightness(I)V

    goto/16 :goto_3a
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 14121
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->brightOwnImage()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16200(Lcom/android/phone/InVTCallScreen;)V

    .line 14122
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->cancel()V

    .line 14124
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 14127
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$62;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 14128
    return-void
.end method
