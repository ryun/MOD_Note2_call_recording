.class public Lcom/android/phone/UsimDownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsimDownloadBroadcastReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 27
    const-string v0, "UsimDownloadBroadcastReceiver"

    const-string v1, "SECRET_CODE_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 31
    const-string v0, "UsimDownloadBroadcastReceiver"

    const-string v1, "ACTION_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.NO_SIM_NOTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 35
    const-string v0, "UsimDownloadBroadcastReceiver"

    const-string v1, "NO_SIM_NOTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_3b
    return-void
.end method
