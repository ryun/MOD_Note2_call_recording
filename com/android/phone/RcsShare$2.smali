.class final Lcom/android/phone/RcsShare$2;
.super Ljava/lang/Object;
.source "RcsShare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RcsShare;->setupInviteCallCardButtons(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$invitation:Lcom/android/phone/RcsInvitation;

.field final synthetic val$tel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/RcsInvitation;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/phone/RcsShare$2;->val$displayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/RcsShare$2;->val$tel:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/RcsShare$2;->val$invitation:Lcom/android/phone/RcsInvitation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 638
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick reject share "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RcsShare$2;->val$displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RcsShare$2;->val$tel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.mediatransfer.contentshare.action.SHARE_DECLINE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v1, i:Landroid/content/Intent;
    const-string v2, "sessionId"

    iget-object v3, p0, Lcom/android/phone/RcsShare$2;->val$invitation:Lcom/android/phone/RcsInvitation;

    invoke-virtual {v3}, Lcom/android/phone/RcsInvitation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/phone/RcsShare$SessionState;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 643
    const-string v2, "com.samsung.rcs.framework.mediatransfer.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :try_start_43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_4b

    .line 649
    :goto_4a
    return-void

    .line 646
    :catch_4b
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/RcsShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Did not find RCS service..."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method
