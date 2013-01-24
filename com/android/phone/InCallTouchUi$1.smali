.class Lcom/android/phone/InCallTouchUi$1;
.super Landroid/os/Handler;
.source "InCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 216
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_a

    .line 259
    :goto_9
    return-void

    .line 219
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_e4

    .line 256
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 227
    :sswitch_28
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_40

    .line 228
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/EndCallButtonsView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 230
    :cond_40
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$200(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9

    .line 234
    :sswitch_4c
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: mInCallScreen.getUpdatedInCallControlState().speakerEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/InCallTouchUi;->access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$300(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$300(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$200(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_9

    .line 241
    :sswitch_9b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$400(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$400(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$200(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_9

    .line 247
    :sswitch_c6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$200(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_9

    .line 252
    :sswitch_dc
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    #calls: Lcom/android/phone/InCallTouchUi;->UnholdButtonBlink()V
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$600(Lcom/android/phone/InCallTouchUi;)V

    goto/16 :goto_9

    .line 219
    nop

    :sswitch_data_e4
    .sparse-switch
        0x64 -> :sswitch_28
        0x6e -> :sswitch_4c
        0x78 -> :sswitch_9b
        0x82 -> :sswitch_c6
        0x8c -> :sswitch_dc
    .end sparse-switch
.end method
