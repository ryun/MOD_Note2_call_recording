.class Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;
.super Ljava/lang/Thread;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalInfoTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;I)V
    .registers 7
    .parameter
    .parameter "toneId"

    .prologue
    .line 3517
    iput-object p1, p0, Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneApp;

    .line 3518
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3519
    iput p2, p0, Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;->mToneId:I

    .line 3520
    #getter for: Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {p1}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Landroid/media/ToneGenerator;

    move-result-object v1

    if-nez v1, :cond_18

    .line 3522
    :try_start_d
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {p1, v1}, Lcom/android/phone/PhoneApp;->access$2302(Lcom/android/phone/PhoneApp;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_18} :catch_19

    .line 3530
    :cond_18
    :goto_18
    return-void

    .line 3524
    :catch_19
    move-exception v0

    .line 3525
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneApp: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {p1, v1}, Lcom/android/phone/PhoneApp;->access$2302(Lcom/android/phone/PhoneApp;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_18
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3534
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalInfoTonePlayer.run(toneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    iget-object v0, p0, Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 3538
    iget-object v0, p0, Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3541
    iget-object v0, p0, Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhoneApp$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 3543
    :cond_3c
    return-void
.end method
