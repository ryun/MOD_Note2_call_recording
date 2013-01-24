.class Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMsgRunnable"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method public constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "msg"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    .line 503
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 506
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 507
    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 508
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 512
    :cond_2f
    const-string v2, "phonetype"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$300(Lcom/android/phone/RejectCallWithMsgContent;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    :cond_3a
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 516
    const-string v2, "RejectCallWithMsgContent"

    const-string v3, "Message Sent."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 517
    const-string v2, "RejectCallWithMsgContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_75
    return-void
.end method
