.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0xbb8

    .line 99
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2a

    .line 100
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 101
    .local v3, res:Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_85

    .line 103
    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 106
    :try_start_15
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 107
    .local v2, num_retries:I
    if-lez v2, :cond_2b

    .line 109
    new-instance v4, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;

    invoke-direct {v4, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    .end local v2           #num_retries:I
    .end local v3           #res:Landroid/os/AsyncResult;
    :cond_2a
    :goto_2a
    return-void

    .line 117
    .restart local v2       #num_retries:I
    .restart local v3       #res:Landroid/os/AsyncResult;
    :cond_2b
    if-nez v2, :cond_2a

    .line 121
    const-string v4, "nck_block_feature"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 122
    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string v5, "NCK BLOCKED, sending broadcast"

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.RIL_PERSO_BLOCKED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.app.RilErrorNotifier"

    const-string v6, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 126
    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_58} :catch_59

    goto :goto_2a

    .line 153
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #num_retries:I
    :catch_59
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v4, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$4;

    invoke-direct {v4, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    .line 129
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v2       #num_retries:I
    :cond_63
    :try_start_63
    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Network Control Code is blocked"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 132
    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    const-string v5, "network depersonalization request failure. retry count = 0"

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V

    .line 133
    new-instance v4, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;

    invoke-direct {v4, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_84
    .catch Ljava/lang/NullPointerException; {:try_start_63 .. :try_end_84} :catch_59

    goto :goto_2a

    .line 164
    .end local v2           #num_retries:I
    :cond_85
    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 165
    new-instance v4, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$5;

    invoke-direct {v4, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$5;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a
.end method
