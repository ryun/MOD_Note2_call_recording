.class Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;
.super Ljava/lang/Thread;
.source "OverturnTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 250
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 251
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 252
    const-wide/16 v0, 0xdac

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 254
    :cond_19
    return-void
.end method
