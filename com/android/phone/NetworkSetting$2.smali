.class Lcom/android/phone/NetworkSetting$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 210
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworkSetting] BroadcastReceiver; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 211
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.PLMNACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 213
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworkSetting] mOnPauseTransition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOnBroadcastRecieve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mOnBroadcastRecieve:Z
    invoke-static {v0, v3}, Lcom/android/phone/NetworkSetting;->access$102(Lcom/android/phone/NetworkSetting;Z)Z

    .line 216
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mOnPauseTransition:Z
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 217
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x384

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :cond_89
    return-void
.end method
