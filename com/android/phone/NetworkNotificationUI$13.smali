.class Lcom/android/phone/NetworkNotificationUI$13;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V
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
    .line 1315
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$13;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 1317
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1319
    packed-switch p2, :pswitch_data_6e

    .line 1344
    const-string v1, "NetworkNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$13;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_2d
    :pswitch_2d
    return-void

    .line 1321
    :pswitch_2e
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$13;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1324
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$13;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1327
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$13;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e04d6

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1330
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1331
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/NetworkNotificationUI$13$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkNotificationUI$13$1;-><init>(Lcom/android/phone/NetworkNotificationUI$13;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2d

    .line 1319
    nop

    :pswitch_data_6e
    .packed-switch -0x2
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method
