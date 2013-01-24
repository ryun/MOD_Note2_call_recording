.class Lcom/android/phone/ExtraRinger$2;
.super Ljava/lang/Object;
.source "ExtraRinger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ExtraRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ExtraRinger;


# direct methods
.method constructor <init>(Lcom/android/phone/ExtraRinger;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 159
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 147
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v0, v1

    .line 148
    .local v0, value:I
    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightSensorListener : lux = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/ExtraRinger;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ExtraRinger;->access$100(Lcom/android/phone/ExtraRinger;Ljava/lang/String;)V

    .line 150
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2e

    .line 151
    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/ExtraRinger;->access$476(Lcom/android/phone/ExtraRinger;I)I

    .line 155
    :goto_28
    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    #calls: Lcom/android/phone/ExtraRinger;->updateSensorState()V
    invoke-static {v1}, Lcom/android/phone/ExtraRinger;->access$500(Lcom/android/phone/ExtraRinger;)V

    .line 156
    return-void

    .line 153
    :cond_2e
    iget-object v1, p0, Lcom/android/phone/ExtraRinger$2;->this$0:Lcom/android/phone/ExtraRinger;

    const/4 v2, 0x4

    #setter for: Lcom/android/phone/ExtraRinger;->mSensorChecked:I
    invoke-static {v1, v2}, Lcom/android/phone/ExtraRinger;->access$402(Lcom/android/phone/ExtraRinger;I)I

    goto :goto_28
.end method
