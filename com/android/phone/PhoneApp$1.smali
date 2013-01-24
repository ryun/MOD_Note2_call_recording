.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 532
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handler : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_534

    .line 896
    :cond_1f
    :goto_1f
    :sswitch_1f
    return-void

    .line 541
    :sswitch_20
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_1f

    .line 551
    :sswitch_2a
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 553
    const-string v10, "PhoneApp"

    const-string v11, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 557
    :cond_40
    const-string v10, "nck_block_feature"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5e

    const-string v10, "1"

    const-string v11, "ril.perso_nwk_puk"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 560
    const-string v10, "PhoneApp"

    const-string v11, "network perm blocked, do not show sim depersonal panel"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 566
    :cond_5e
    const-string v10, "PhoneApp"

    const-string v11, "show sim depersonal panel"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v3, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 569
    .local v3, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_1f

    .line 582
    .end local v3           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_72
    const-string v10, "PhoneApp"

    const-string v11, "- updating in-call notification from handler..."

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_1f

    .line 587
    :sswitch_81
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_1f

    .line 591
    :sswitch_89
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_1f

    .line 596
    :sswitch_91
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v10, :cond_1f

    sget-boolean v10, Lcom/android/phone/PhoneApp;->mIsInitiatedMMI:Z

    if-eqz v10, :cond_1f

    .line 597
    const-string v10, "PhoneApp"

    const-string v11, "keep MMI_INITIATE event"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 598
    iget-object v11, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iput-object v10, v11, Lcom/android/phone/PhoneApp;->mMmiInitMsg:Landroid/os/AsyncResult;

    goto/16 :goto_1f

    .line 603
    :sswitch_b5
    iget-object v11, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v11, v10}, Lcom/android/phone/PhoneApp;->access$200(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_1f

    .line 607
    :sswitch_c0
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_1f

    .line 611
    :sswitch_c9
    iget-object v11, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onSSInfo(Landroid/os/AsyncResult;)V
    invoke-static {v11, v10}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_1f

    .line 620
    :sswitch_d4
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 622
    .local v4, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v10, :cond_152

    .line 623
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v10, :cond_f0

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-nez v10, :cond_143

    .line 624
    :cond_f0
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_1ad

    .line 627
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 628
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->restoreNoiseSuppression(Landroid/content/Context;)V

    .line 630
    :cond_10d
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_11e

    .line 631
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 633
    :cond_11e
    const-string v10, "extra_volume"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12f

    .line 634
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->restoreExtraVol(Landroid/content/Context;)V

    .line 637
    :cond_12f
    sget-boolean v10, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v10, :cond_1a3

    .line 638
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 643
    :goto_13e
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 666
    :cond_143
    :goto_143
    const-string v10, "speaker_bt_button_disable_with_headset_plug"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_152

    .line 667
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 671
    :cond_152
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v10}, Lcom/android/phone/Ringer;->updateHeadsetRingtoneState()V

    .line 674
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10, v4}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 676
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 678
    const-string v10, "feature_att"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18b

    .line 679
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_18b

    .line 680
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)I

    move-result v10

    if-eqz v10, :cond_18b

    .line 681
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_tty_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 682
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v10, v11}, Lcom/android/phone/PhoneApp;->access$402(Lcom/android/phone/PhoneApp;I)I

    .line 687
    :cond_18b
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 688
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/phone/PhoneApp$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneApp$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1f

    .line 640
    :cond_1a3
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_13e

    .line 648
    :cond_1ad
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1c4

    .line 649
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 653
    :cond_1c4
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1d5

    .line 654
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 656
    :cond_1d5
    const-string v10, "extra_volume"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e8

    .line 657
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnExtraVol(Landroid/content/Context;ZZ)V

    .line 660
    :cond_1e8
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 662
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_143

    .line 696
    .end local v4           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_1fa
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v11, "READY"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 700
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_21b

    .line 701
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 702
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v10, v11}, Lcom/android/phone/PhoneApp;->access$602(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 704
    :cond_21b
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_1f

    .line 705
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    .line 706
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10, v11}, Lcom/android/phone/PhoneApp;->access$702(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_1f

    .line 718
    :sswitch_234
    const/4 v1, 0x0

    .line 719
    .local v1, inDockMode:Z
    sget v10, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_24b

    sget v10, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_24b

    sget v10, Lcom/android/phone/PhoneApp;->mDockState:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_24b

    sget v10, Lcom/android/phone/PhoneApp;->mDockState:I

    const/16 v11, 0x9

    if-ne v10, v11, :cond_24c

    .line 723
    :cond_24b
    const/4 v1, 0x1

    .line 725
    :cond_24c
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 729
    .restart local v4       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v10, :cond_1f

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v10, :cond_288

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 732
    :cond_288
    const-string v10, "restore_spk_unplugged_dock"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2c8

    .line 733
    if-eqz v1, :cond_2be

    .line 734
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 741
    :goto_29d
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v10, :cond_2aa

    .line 742
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InVTCallScreen;->requestUpdateDockUi()V

    .line 744
    :cond_2aa
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v10, :cond_2b7

    .line 745
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->requestUpdateDockUi()V

    .line 747
    :cond_2b7
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_1f

    .line 736
    :cond_2be
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_29d

    .line 739
    :cond_2c8
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v1, v11}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_29d

    .line 754
    .end local v1           #inDockMode:Z
    .end local v4           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_2d3
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_2f4

    .line 755
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)I

    move-result v7

    .line 759
    .local v7, ttyMode:I
    :goto_2e1
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v11, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_1f

    .line 757
    .end local v7           #ttyMode:I
    :cond_2f4
    const/4 v7, 0x0

    .restart local v7       #ttyMode:I
    goto :goto_2e1

    .line 763
    .end local v7           #ttyMode:I
    :sswitch_2f6
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v10, p1}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_1f

    .line 767
    :sswitch_2fd
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v10, p1}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_1f

    .line 770
    :sswitch_304
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_1f

    .line 773
    :sswitch_309
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    .line 774
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_1f

    .line 777
    :sswitch_311
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    .line 778
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_1f

    .line 781
    :sswitch_319
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "surface_palm_touch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 783
    .local v9, val:I
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_PALM_DOWN : value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-lez v9, :cond_1f

    .line 785
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_1f

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 786
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_1f

    .line 793
    .end local v9           #val:I
    :sswitch_35f
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v10, :cond_1f

    .line 794
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->checkCurrentAudioPath()V

    goto/16 :goto_1f

    .line 800
    :sswitch_36e
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v10

    if-nez v10, :cond_1f

    sget-boolean v10, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v10, :cond_1f

    .line 801
    const-string v10, "PhoneApp"

    const-string v11, "VE: mHandler: HANDLE_MSG_READY_PLAY"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v10, :cond_39b

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v10

    if-eqz v10, :cond_39b

    .line 803
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    .line 805
    :cond_39b
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x11eb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1f

    .line 809
    :sswitch_3a6
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 810
    const-string v10, "PhoneApp"

    const-string v11, "VE: mHandler: HANDLE_MSG_STOP_PLAY"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x11ec

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 812
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v10

    if-eqz v10, :cond_1f

    .line 813
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_1f

    .line 818
    :sswitch_3da
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVideoCallType()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 819
    const-string v10, "PhoneApp"

    const-string v11, "VE: mHandler: HANDLE_MSG_MEDIA_ERROR"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x11ec

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v10

    if-eqz v10, :cond_1f

    .line 822
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/CallCard;->enableVisualExpression(Z)V

    goto/16 :goto_1f

    .line 828
    :sswitch_40e
    const-string v10, "ManualSelectionReceiver"

    const-string v11, "Selection Automatic Done "

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 831
    :sswitch_417
    const-string v10, "PhoneApp"

    const-string v11, "EVENT_GET_PREFERRED_NETWORK "

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v10, "feature_lgt"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 833
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 834
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v8, 0x0

    .line 835
    .local v8, type:I
    if-nez v0, :cond_436

    .line 836
    const-string v10, "PhoneApp"

    const-string v11, "ar is null...."

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 839
    :cond_436
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_485

    .line 840
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    aget v8, v10, v11

    .line 841
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get preferred network type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    packed-switch v8, :pswitch_data_5b2

    .line 856
    const-string v10, "ril.roaming.networkmode"

    const-string v11, "AUTO"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :goto_465
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleGetPreferredNetworkTypeResponse  set to = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ril.roaming.networkmode"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 844
    :cond_485
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get preferred network type, exception="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 850
    :pswitch_4a1
    const-string v10, "ril.roaming.networkmode"

    const-string v11, "GSM"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    .line 853
    :pswitch_4a9
    const-string v10, "ril.roaming.networkmode"

    const-string v11, "WCDMA"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    .line 865
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v8           #type:I
    :sswitch_4b1
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1000()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 866
    const-string v10, "PhoneApp"

    const-string v11, " EVENT_DATA_ROAM_ACCESS Show Toast"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->ShowDataRoamingToast()V

    .line 868
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$1002(Z)Z

    goto/16 :goto_1f

    .line 872
    :sswitch_4c9
    const-string v10, "PhoneApp"

    const-string v11, " EVENT_DATA_ROAMING_DENY Notify!"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->showAllowDataAccess()V

    goto/16 :goto_1f

    .line 877
    :sswitch_4d9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    .line 878
    .local v6, set:Ljava/lang/Boolean;
    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_SET_PS_CHANNEL :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10, v6}, Lcom/android/phone/PhoneApp;->setChannel(Ljava/lang/Boolean;)V

    goto/16 :goto_1f

    .line 883
    .end local v6           #set:Ljava/lang/Boolean;
    :sswitch_4fc
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 884
    .local v5, serviceState:I
    const/4 v10, 0x1

    if-ne v5, v10, :cond_1f

    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isGlobalPopupDisplayed()Z
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 885
    const-string v10, "PhoneApp"

    const-string v11, "GlobalNetworkSelectAlertDialog is start"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "com.android.phone"

    const-string v11, "com.android.phone.GlobalNetworkSelectAlertDialog"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 889
    iget-object v10, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10, v2}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1f

    .line 534
    :sswitch_data_534
    .sparse-switch
        0x3 -> :sswitch_2a
        0x7 -> :sswitch_d4
        0x8 -> :sswitch_1fa
        0x9 -> :sswitch_72
        0xa -> :sswitch_81
        0xb -> :sswitch_89
        0xc -> :sswitch_1f
        0xd -> :sswitch_234
        0xe -> :sswitch_2d3
        0xf -> :sswitch_2f6
        0x10 -> :sswitch_2fd
        0x11 -> :sswitch_20
        0x14 -> :sswitch_304
        0x16 -> :sswitch_309
        0x17 -> :sswitch_311
        0x18 -> :sswitch_319
        0x19 -> :sswitch_35f
        0x1a -> :sswitch_40e
        0x1d -> :sswitch_4d9
        0x1f -> :sswitch_2a
        0x21 -> :sswitch_4b1
        0x22 -> :sswitch_4c9
        0x23 -> :sswitch_4fc
        0x33 -> :sswitch_91
        0x34 -> :sswitch_b5
        0x35 -> :sswitch_c0
        0x46 -> :sswitch_c9
        0x2bc -> :sswitch_417
        0x11ea -> :sswitch_36e
        0x11ec -> :sswitch_3a6
        0x11f1 -> :sswitch_3da
    .end sparse-switch

    .line 848
    :pswitch_data_5b2
    .packed-switch 0x1
        :pswitch_4a1
        :pswitch_4a9
    .end packed-switch
.end method
