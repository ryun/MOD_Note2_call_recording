.class Lcom/android/phone/OutgoingCallBroadcaster$1;
.super Landroid/os/Handler;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 155
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler message id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    .line 175
    :goto_20
    return-void

    .line 158
    :pswitch_21
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 159
    :try_start_28
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 160
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "mHandler: mToneGenerator == null"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_37
    monitor-exit v1

    goto :goto_20

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    throw v0

    .line 162
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 163
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 164
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$102(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_39

    goto :goto_37

    .line 169
    :pswitch_55
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "Outgoing call takes too long. Showing the spinner."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_20

    .line 156
    nop

    :pswitch_data_68
    .packed-switch 0x65
        :pswitch_55
        :pswitch_21
    .end packed-switch
.end method
