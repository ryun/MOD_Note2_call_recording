.class Lcom/android/phone/CdmaAdditionalCallOptions$6;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 477
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage() msg.what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    .line 478
    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 487
    :goto_21
    return-void

    .line 481
    :pswitch_22
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$6;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetCWMessage()V
    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$700(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    goto :goto_21

    .line 478
    :pswitch_data_28
    .packed-switch 0x190
        :pswitch_22
    .end packed-switch
.end method
