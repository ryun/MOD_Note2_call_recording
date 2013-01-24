.class Lcom/android/phone/EmergencyCallbackMode$2;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyCallbackMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackMode;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackMode;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackMode$2;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 111
    const-string v1, "phoneinECMState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 112
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode$2;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    #calls: Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/EmergencyCallbackMode;->access$100(Lcom/android/phone/EmergencyCallbackMode;Z)V

    .line 113
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode$2;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 116
    :cond_1f
    return-void
.end method
