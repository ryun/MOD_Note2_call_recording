.class Lcom/android/phone/CdmaAdditionalCallOptions$17;
.super Landroid/content/BroadcastReceiver;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$17;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 947
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 949
    const-string v3, "state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_34

    .line 950
    .local v1, state:Z
    :goto_16
    const-string v2, "CdmaAdditionalOtions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver - ACTION_HEADSET_PLUG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$17;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->updateNoiseReduction()V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1500(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    .line 956
    .end local v1           #state:Z
    :cond_33
    :goto_33
    return-void

    :cond_34
    move v1, v2

    .line 949
    goto :goto_16

    .line 952
    :cond_36
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 953
    const-string v3, "CdmaAdditionalOtions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReceiver - ACTION_CONNECTION_STATE_CHANGED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$17;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->updateNoiseReduction()V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1500(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    goto :goto_33
.end method
