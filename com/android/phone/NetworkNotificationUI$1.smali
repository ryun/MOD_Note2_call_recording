.class Lcom/android/phone/NetworkNotificationUI$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "NetworkNotificationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver onReceive intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_23
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 199
    :cond_33
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Intent;)V

    .line 254
    :cond_38
    :goto_38
    return-void

    .line 201
    :cond_39
    const-string v2, "android.net.conn.FAILOVER_CHANGED_TO_MOBILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 203
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v2, v5}, Lcom/android/phone/NetworkNotificationUI;->access$302(Lcom/android/phone/NetworkNotificationUI;Z)Z

    goto :goto_38

    .line 205
    :cond_47
    const-string v2, "android.intent.action.MANUAL_SET_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 206
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$500()Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_38

    .line 207
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_38

    .line 210
    :cond_63
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 211
    const-string v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, plugged:I
    const-string v2, "NetworkNotificationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v1, :cond_8e

    if-ne v1, v5, :cond_38

    .line 215
    :cond_8e
    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    int-to-byte v3, v1

    #calls: Lcom/android/phone/NetworkNotificationUI;->setChargerConnected(B)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;B)V

    goto :goto_38
.end method
