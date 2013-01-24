.class Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialerForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 416
    :goto_5
    return-void

    .line 403
    :pswitch_6
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 404
    const-string v0, "disconnect message recieved, shutting down."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 406
    :cond_11
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$500(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 407
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    goto :goto_5

    .line 410
    :pswitch_21
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 411
    const-string v0, "dtmf confirmation received from FW."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 413
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->handleBurstDtmfConfirmation()V

    goto :goto_5

    .line 399
    :pswitch_data_32
    .packed-switch 0x64
        :pswitch_6
        :pswitch_21
    .end packed-switch
.end method
