.class Lcom/android/phone/KTCallWaiting$2;
.super Ljava/util/TimerTask;
.source "KTCallWaiting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallWaiting;

.field final synthetic val$NoResponse:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallWaiting;Landroid/widget/Toast;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/phone/KTCallWaiting$2;->this$0:Lcom/android/phone/KTCallWaiting;

    iput-object p2, p0, Lcom/android/phone/KTCallWaiting$2;->val$NoResponse:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$2;->this$0:Lcom/android/phone/KTCallWaiting;

    #getter for: Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/phone/KTCallWaiting;->access$100(Lcom/android/phone/KTCallWaiting;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 218
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 219
    const-string v1, "KTCallWaiting"

    const-string v2, "destory progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$2;->val$NoResponse:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 223
    :cond_23
    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$2;->this$0:Lcom/android/phone/KTCallWaiting;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/android/phone/KTCallWaiting;->access$202(Lcom/android/phone/KTCallWaiting;Ljava/util/Timer;)Ljava/util/Timer;

    .line 224
    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$2;->this$0:Lcom/android/phone/KTCallWaiting;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z
    invoke-static {v1, v2}, Lcom/android/phone/KTCallWaiting;->access$302(Lcom/android/phone/KTCallWaiting;Z)Z

    .line 225
    return-void
.end method
