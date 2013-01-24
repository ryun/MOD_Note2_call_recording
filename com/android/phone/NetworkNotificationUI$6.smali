.class Lcom/android/phone/NetworkNotificationUI$6;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 711
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 714
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;Z)V

    .line 715
    :cond_e
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$2302(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 716
    return-void
.end method
