.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x97

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 441
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 443
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 444
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: ignoring message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; we\'re destroyed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 665
    :cond_45
    :goto_45
    return-void

    .line 447
    :cond_46
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-nez v5, :cond_6c

    .line 448
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: handling message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while not in foreground"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 457
    :cond_6c
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 458
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_b7

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-nez v5, :cond_b7

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 459
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/phone/RcsShare;->disconnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_b7
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_330

    .line 662
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHandler: unexpected message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 468
    :sswitch_d6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 469
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto/16 :goto_45

    .line 473
    :sswitch_e6
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_45

    .line 477
    :sswitch_f1
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_45

    .line 489
    :sswitch_fc
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 496
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 497
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->invalidateOptionsMenu()V

    .line 499
    :cond_10e
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallTouchUi;->refreshAudioModePopup()V

    goto/16 :goto_45

    .line 510
    :sswitch_119
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 519
    :sswitch_120
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    .line 520
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/MmiCode;

    #calls: Lcom/android/phone/InCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v6, v5}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/MmiCode;)V

    goto/16 :goto_45

    .line 524
    :sswitch_134
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 525
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-char v7, v7

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v6, v5, v7}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_45

    .line 527
    :cond_14a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Handler: POST_ON_DIAL_CHARS msg ignore because incallscreen not in foreground"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    goto/16 :goto_45

    .line 532
    :sswitch_153
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 536
    :sswitch_15a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 540
    :sswitch_161
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 544
    :sswitch_168
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 549
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_45

    .line 553
    :sswitch_17a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 559
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 563
    :sswitch_188
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 567
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1b9

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-boolean v5, v5, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    if-nez v5, :cond_1b9

    .line 570
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 571
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 573
    :cond_1b9
    const-string v5, " disable_notification_in_waiting_call_ringing"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 574
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateExpandedViewState()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 579
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_1c8
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_45

    .line 580
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_45

    .line 585
    :sswitch_1df
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_45

    .line 586
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_45

    .line 591
    :sswitch_1f6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 592
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 593
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 594
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v12}, Lcom/android/phone/InCallScreen;->access$1802(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_45

    .line 599
    :sswitch_215
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v10, v5, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    .line 600
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 601
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_45

    .line 605
    :sswitch_238
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 608
    :sswitch_23f
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->updateScreenOrientation(Landroid/content/res/Configuration;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;Landroid/content/res/Configuration;)V

    goto/16 :goto_45

    .line 612
    :sswitch_250
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onIncomingRing()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 616
    :sswitch_257
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onNewRingingConnection()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_45

    .line 620
    :sswitch_25e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v3, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 621
    .local v3, state:Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_45

    .line 626
    .end local v3           #state:Landroid/telephony/ServiceState;
    :sswitch_26c
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_281

    .line 627
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    :cond_281
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_45

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 630
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "STATE_IN_SERVICE : start call "

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;Z)V

    .line 631
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2502(Z)Z

    .line 632
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 633
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mFlightModeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v12}, Lcom/android/phone/InCallScreen;->access$2402(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 634
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v5}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v2

    .line 636
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_45

    .line 637
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 638
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 644
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2c7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 645
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_45

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    sget-boolean v5, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    if-nez v5, :cond_45

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_45

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 648
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "TURN_ON_SPEAKER_FOR_BARGE_IN : turn on speaker"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 649
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto/16 :goto_45

    .line 655
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :sswitch_30a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-nez v5, :cond_45

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_45

    .line 656
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 657
    .local v4, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->showCallView()V

    goto/16 :goto_45

    .line 464
    nop

    :sswitch_data_330
    .sparse-switch
        0x34 -> :sswitch_120
        0x35 -> :sswitch_119
        0x65 -> :sswitch_e6
        0x66 -> :sswitch_f1
        0x67 -> :sswitch_fc
        0x68 -> :sswitch_134
        0x6a -> :sswitch_153
        0x6b -> :sswitch_15a
        0x6c -> :sswitch_161
        0x6e -> :sswitch_d6
        0x70 -> :sswitch_168
        0x72 -> :sswitch_17a
        0x73 -> :sswitch_188
        0x76 -> :sswitch_1c8
        0x77 -> :sswitch_1df
        0x78 -> :sswitch_1f6
        0x79 -> :sswitch_215
        0x7a -> :sswitch_238
        0x7b -> :sswitch_250
        0x7c -> :sswitch_257
        0x96 -> :sswitch_25e
        0x97 -> :sswitch_26c
        0x98 -> :sswitch_23f
        0x99 -> :sswitch_2c7
        0xa0 -> :sswitch_30a
    .end sparse-switch
.end method
