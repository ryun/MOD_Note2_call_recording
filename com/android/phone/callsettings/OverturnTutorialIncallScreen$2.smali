.class Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .parameter "motionEvent"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    .line 151
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 139
    :sswitch_8
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion Event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 142
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$500(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 131
    nop

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_7
        0xa -> :sswitch_8
        0x23 -> :sswitch_7
        0x3d -> :sswitch_7
        0x48 -> :sswitch_7
    .end sparse-switch
.end method
