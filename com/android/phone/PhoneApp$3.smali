.class Lcom/android/phone/PhoneApp$3;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 3486
    iput-object p1, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3502
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3488
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    .line 3491
    .local v0, distance:F
    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_22

    const/high16 v3, 0x40a0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_22

    iget-object v3, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$2200(Lcom/android/phone/PhoneApp;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_22

    move v1, v2

    :cond_22
    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    .line 3494
    const-string v1, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged : active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3496
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 3497
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateSSC()V

    .line 3498
    return-void
.end method
