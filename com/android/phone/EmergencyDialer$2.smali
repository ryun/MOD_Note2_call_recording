.class Lcom/android/phone/EmergencyDialer$2;
.super Landroid/os/Handler;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 191
    const-string v0, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 202
    :cond_1f
    :goto_1f
    return-void

    .line 194
    :pswitch_20
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1f

    .line 195
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$000(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 196
    :cond_40
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_1f

    .line 192
    :pswitch_data_46
    .packed-switch 0x64
        :pswitch_20
    .end packed-switch
.end method
