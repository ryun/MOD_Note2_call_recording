.class Lcom/android/phone/NetworkNotificationUI$13$1;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkNotificationUI$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkNotificationUI$13;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI$13;)V
    .registers 2
    .parameter

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$13$1;->this$1:Lcom/android/phone/NetworkNotificationUI$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$13$1;->this$1:Lcom/android/phone/NetworkNotificationUI$13;

    iget-object v1, v1, Lcom/android/phone/NetworkNotificationUI$13;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1336
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1337
    return-void
.end method
