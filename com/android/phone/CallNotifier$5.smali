.class Lcom/android/phone/CallNotifier$5;
.super Landroid/content/BroadcastReceiver;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 2854
    iput-object p1, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2857
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2858
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2859
    iget-object v1, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2861
    :cond_13
    return-void
.end method
