.class Lcom/android/phone/CallCard$1;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 301
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_10e

    .line 339
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1e
    :goto_1e
    return-void

    .line 303
    :sswitch_1f
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->CallEndTimeBlink()V
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$000(Lcom/android/phone/CallCard;)V

    goto :goto_1e

    .line 306
    :sswitch_25
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->RecInfoBlink()V
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)V

    goto :goto_1e

    .line 309
    :sswitch_2b
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mExtraVol:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1e

    .line 312
    :sswitch_36
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_4c

    .line 313
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    const-string v2, "Stop animation in IDLE state!"

    #calls: Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;Ljava/lang/String;)V

    goto :goto_1e

    .line 316
    :cond_4c
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mAnimationList:[[I
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)[[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCurrentAnimationType:I
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$600(Lcom/android/phone/CallCard;)I

    move-result v3

    aget-object v2, v2, v3

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_6a

    .line 317
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #setter for: Lcom/android/phone/CallCard;->mCurrentAnimationIndex:I
    invoke-static {v1, v4}, Lcom/android/phone/CallCard;->access$402(Lcom/android/phone/CallCard;I)I

    .line 319
    :cond_6a
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$700(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallContactPhoto;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mAnimationList:[[I
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)[[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCurrentAnimationType:I
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$600(Lcom/android/phone/CallCard;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-static {v3}, Lcom/android/phone/CallCard;->access$408(Lcom/android/phone/CallCard;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallContactPhoto;->setImageResource(I)V

    .line 320
    const/16 v1, 0x82

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallCard$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e

    .line 323
    :sswitch_91
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_1e

    .line 324
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$800(Lcom/android/phone/CallCard;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMarkList:[I
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)[I

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_b5

    .line 325
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #setter for: Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I
    invoke-static {v1, v4}, Lcom/android/phone/CallCard;->access$802(Lcom/android/phone/CallCard;I)I

    .line 327
    :cond_b5
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$1000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$1000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMarkList:[I
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-static {v3}, Lcom/android/phone/CallCard;->access$808(Lcom/android/phone/CallCard;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :cond_d4
    const/16 v1, 0x8c

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallCard$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1e

    .line 332
    :sswitch_dd
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 333
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 335
    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$700(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallContactPhoto;

    move-result-object v1

    const v2, 0x7f020191

    #calls: Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V
    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->access$1100(Landroid/widget/ImageView;I)V

    goto/16 :goto_1e

    .line 301
    nop

    :sswitch_data_10e
    .sparse-switch
        0x64 -> :sswitch_1f
        0x65 -> :sswitch_dd
        0x6e -> :sswitch_25
        0x78 -> :sswitch_2b
        0x82 -> :sswitch_36
        0x8c -> :sswitch_91
    .end sparse-switch
.end method
