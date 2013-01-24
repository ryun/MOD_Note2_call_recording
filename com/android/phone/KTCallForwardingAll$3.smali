.class Lcom/android/phone/KTCallForwardingAll$3;
.super Ljava/util/TimerTask;
.source "KTCallForwardingAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingAll;

.field final synthetic val$NoResponse:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallForwardingAll;Landroid/widget/Toast;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iput-object p2, p0, Lcom/android/phone/KTCallForwardingAll$3;->val$NoResponse:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    #getter for: Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/phone/KTCallForwardingAll;->access$600(Lcom/android/phone/KTCallForwardingAll;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 261
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 262
    const-string v1, "KTCallForwardingAll"

    const-string v2, "destory progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 264
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->val$NoResponse:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 266
    :cond_23
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/android/phone/KTCallForwardingAll;->access$802(Lcom/android/phone/KTCallForwardingAll;Ljava/util/Timer;)Ljava/util/Timer;

    .line 267
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z
    invoke-static {v1, v2}, Lcom/android/phone/KTCallForwardingAll;->access$202(Lcom/android/phone/KTCallForwardingAll;Z)Z

    .line 268
    return-void
.end method
