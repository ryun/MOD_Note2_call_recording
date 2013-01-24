.class Lcom/android/phone/CallNotifier$2;
.super Ljava/util/TimerTask;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V
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
    .line 485
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "Autoaccept voice call: TimerTask"

    const/4 v2, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 490
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 494
    :goto_21
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier$2;->cancel()Z

    .line 495
    return-void

    .line 492
    :cond_25
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "Autoaccept voice call : mApplication.getInCallScreenInstance() is null!!"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto :goto_21
.end method
