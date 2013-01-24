.class public Lcom/android/phone/ECNFOTAReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ECNFOTAReceiver.java"


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "ECN"

    sput-object v0, Lcom/android/phone/ECNFOTAReceiver;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/ECNFOTAReceiver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/phone/ECNFOTAReceiver;->DBG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/phone/ECNFOTAReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/phone/ECNFOTAReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_26
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: intent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ECNFOTAReceiver;->log(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ECNUtils;->getInstance()Lcom/android/phone/ECNUtils;

    move-result-object v1

    .line 44
    .local v1, ecnUtils:Lcom/android/phone/ECNUtils;
    if-nez v1, :cond_2a

    .line 45
    const-string v3, "onReceive: ECNUtils instance not created"

    invoke-static {v3}, Lcom/android/phone/ECNFOTAReceiver;->log(Ljava/lang/String;)V

    .line 68
    :cond_29
    :goto_29
    return-void

    .line 49
    :cond_2a
    const-string v3, "android.intent.action.OMADM_EMERGENCY_CALL_NOTIFICATION_GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 50
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.OMADM_EMERGENCY_CALL_NOTIFICATIONS_RECEIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, sendECNIntent:Landroid/content/Intent;
    const-string v3, "USSD"

    iget-object v4, v1, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v3, "Status"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, v1, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v3, "HexCode"

    iget-object v4, v1, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v3, "Digit"

    iget-object v4, v1, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: sendECNIntent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ECNFOTAReceiver;->log(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_29

    .line 59
    .end local v2           #sendECNIntent:Landroid/content/Intent;
    :cond_7c
    const-string v3, "android.intent.action.OMADM_EMERGENCY_CALL_NOTIFICATION_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 61
    const-string v3, "USSD"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/ECNUtils;->ecnUSSD:Ljava/lang/String;

    .line 62
    const-string v3, "Status"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/phone/ECNUtils;->ecnStatus:Z

    .line 63
    const-string v3, "HexCode"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/ECNUtils;->ecnHexCode:Ljava/lang/String;

    .line 64
    const-string v3, "Digit"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/ECNUtils;->ecnDigits:Ljava/lang/String;

    .line 66
    invoke-virtual {v1}, Lcom/android/phone/ECNUtils;->save()V

    goto/16 :goto_29
.end method
