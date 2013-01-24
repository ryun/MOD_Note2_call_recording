.class Lcom/android/phone/InVTCallScreen$60;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 12620
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 12622
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 12623
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14500(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14402(Lcom/android/phone/InVTCallScreen;I)I

    .line 12625
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12626
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;)V

    .line 12635
    :cond_20
    :goto_20
    return-void

    .line 12628
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_20

    .line 12630
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 12631
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14700(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14402(Lcom/android/phone/InVTCallScreen;I)I

    .line 12633
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$60;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    goto :goto_20
.end method
