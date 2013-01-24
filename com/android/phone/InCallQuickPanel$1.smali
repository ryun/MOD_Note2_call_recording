.class final Lcom/android/phone/InCallQuickPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallQuickPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallQuickPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v10, "InCallQuickPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 57
    .local v4, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v3, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 59
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    const-string v10, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 61
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 62
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v8

    .line 66
    .local v8, showScreenIntent:Landroid/content/Intent;
    :goto_36
    invoke-virtual {v4, v8}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 107
    .end local v8           #showScreenIntent:Landroid/content/Intent;
    :cond_39
    :goto_39
    return-void

    .line 64
    :cond_3a
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v8

    .restart local v8       #showScreenIntent:Landroid/content/Intent;
    goto :goto_36

    .line 67
    .end local v8           #showScreenIntent:Landroid/content/Intent;
    :cond_3f
    const-string v10, "com.android.phone.MUTE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 68
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v10

    if-nez v10, :cond_60

    .line 69
    .local v6, requestedMuteState:Z
    :goto_4d
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 72
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v9

    if-nez v9, :cond_5c

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 73
    :cond_5c
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_39

    .end local v6           #requestedMuteState:Z
    :cond_60
    move v6, v9

    .line 68
    goto :goto_4d

    .line 75
    :cond_62
    const-string v10, "com.android.phone.SPEAKER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 76
    const-string v10, "audio"

    invoke-virtual {v4, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 77
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v10

    if-nez v10, :cond_9b

    move v7, v6

    .line 79
    .local v7, requestedSpeakerState:Z
    :goto_79
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 80
    .local v2, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v9

    if-ne v9, v6, :cond_88

    .line 81
    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 83
    :cond_88
    invoke-static {v4, v7, v6}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 85
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v9

    if-nez v9, :cond_97

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 86
    :cond_97
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_39

    .end local v2           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .end local v7           #requestedSpeakerState:Z
    :cond_9b
    move v7, v9

    .line 77
    goto :goto_79

    .line 89
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_9d
    const-string v9, "com.android.phone.UNHOLD"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 90
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_39

    .line 91
    :cond_ad
    const-string v9, "com.android.phone.END"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, phoneType:I
    const-string v9, "feature_chn_duos"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 98
    :goto_c6
    const/4 v9, 0x2

    if-ne v5, v9, :cond_db

    .line 99
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_39

    .line 96
    :cond_d2
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    goto :goto_c6

    .line 100
    :cond_db
    if-eq v5, v6, :cond_e3

    const/4 v9, 0x3

    if-eq v5, v9, :cond_e3

    const/4 v9, 0x4

    if-ne v5, v9, :cond_e8

    .line 102
    :cond_e3
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_39

    .line 104
    :cond_e8
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
