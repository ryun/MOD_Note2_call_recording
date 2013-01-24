.class Lcom/android/phone/BluetoothHandsfree$16;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$voipInf:Landroid/os/IVoIPInterface;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/IVoIPInterface;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4078
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 16
    .parameter "args"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 4081
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 4082
    .local v2, phoneType:I
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 4083
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4085
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    array-length v6, p1

    if-lt v6, v8, :cond_478

    .line 4086
    aget-object v6, p1, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150

    .line 4087
    const/4 v3, 0x0

    .line 4090
    .local v3, result:Z
    const-string v6, "ims_volte"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 4091
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_de

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->hasActiveImsCall()Z
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 4092
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v6

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isImsCallRinging:Z
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 4094
    :try_start_59
    const-string v6, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "sendBTEvent"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "HANGUP_RINGINGCALL"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_8d} :catch_93

    .line 4105
    :goto_8d
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4320
    .end local v3           #result:Z
    :goto_92
    return-object v6

    .line 4095
    .restart local v3       #result:Z
    :catch_93
    move-exception v1

    .line 4096
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Bluetooth HS/HF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d

    .line 4100
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9e
    :try_start_9e
    const-string v6, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "sendBTEvent"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "HANGUP_ACTIVECALL"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_d2} :catch_d3

    goto :goto_8d

    .line 4101
    :catch_d3
    move-exception v1

    .line 4102
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "Bluetooth HS/HF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d

    .line 4110
    .end local v1           #e:Ljava/lang/Exception;
    :cond_de
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 4111
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 4139
    :cond_e8
    :goto_e8
    if-eqz v3, :cond_149

    .line 4140
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v12}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_92

    .line 4115
    :cond_f0
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_128

    .line 4117
    :try_start_fa
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    if-eqz v6, :cond_10c

    .line 4118
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v6

    if-nez v6, :cond_10c

    .line 4119
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_10b} :catch_485

    move-result v3

    .line 4125
    :cond_10c
    :goto_10c
    if-ne v2, v13, :cond_e8

    .line 4126
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_119

    const-string v6, "CHLD:0 CDMA does\'s have background call. just end call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4127
    :cond_119
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_e8

    .line 4130
    :cond_128
    if-ne v2, v13, :cond_144

    .line 4131
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_135

    const-string v6, "CHLD:0 CDMA does\'s have background call. just end call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4132
    :cond_135
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_e8

    .line 4134
    :cond_144
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_e8

    .line 4142
    :cond_149
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4144
    .end local v3           #result:Z
    :cond_150
    aget-object v6, p1, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2be

    .line 4147
    const-string v6, "ims_volte"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c6

    .line 4148
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1c6

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->hasActiveImsCall()Z
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v6

    if-eqz v6, :cond_1c6

    .line 4149
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v7, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4150
    const-string v6, "VoLTE : CHLD 1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4152
    :try_start_180
    const-string v6, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "sendBTEvent"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "ANSWER_AND_END_ACTIVE"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1b4} :catch_1bb

    .line 4156
    :goto_1b4
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v13}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4153
    :catch_1bb
    move-exception v1

    .line 4154
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "Bluetooth HS/HF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b4

    .line 4161
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1c6
    if-ne v2, v13, :cond_224

    .line 4162
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v7, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4163
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_20f

    .line 4165
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_1e0

    const-string v6, "CHLD:1 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4166
    :cond_1e0
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    .line 4175
    :goto_1ed
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_208

    .line 4177
    :try_start_1f7
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    if-eqz v6, :cond_208

    .line 4178
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v6

    if-nez v6, :cond_208

    .line 4179
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_208
    .catch Landroid/os/RemoteException; {:try_start_1f7 .. :try_end_208} :catch_482

    .line 4186
    :cond_208
    :goto_208
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v13}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4171
    :cond_20f
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_21a

    const-string v6, "CHLD:1 Hangup Call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4172
    :cond_21a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_1ed

    .line 4187
    :cond_224
    if-ne v2, v8, :cond_2a5

    .line 4189
    const/4 v3, 0x0

    .line 4190
    .restart local v3       #result:Z
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v7, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4191
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_26b

    .line 4192
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_25c

    .line 4193
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 4195
    :try_start_241
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    if-eqz v6, :cond_253

    .line 4196
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v6

    if-nez v6, :cond_253

    .line 4197
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$voipInf:Landroid/os/IVoIPInterface;

    invoke-interface {v6}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_252
    .catch Landroid/os/RemoteException; {:try_start_241 .. :try_end_252} :catch_47f

    move-result v3

    .line 4216
    :cond_253
    :goto_253
    if-eqz v3, :cond_29e

    .line 4217
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v13}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4203
    :cond_25c
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_253

    .line 4206
    :cond_26b
    const-string v6, "sec_korea_bluetooth"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_282

    .line 4207
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_253

    .line 4209
    :cond_282
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_299

    .line 4210
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_253

    .line 4212
    :cond_299
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_253

    .line 4219
    :cond_29e
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4232
    .end local v3           #result:Z
    :cond_2a5
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4234
    :cond_2be
    aget-object v6, p1, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ee

    .line 4235
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v7, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4238
    const-string v6, "ims_volte"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_334

    .line 4239
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_334

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->hasActiveImsCall()Z
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v6

    if-eqz v6, :cond_334

    .line 4240
    const-string v6, "VoLTE : CHLD 2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4242
    :try_start_2ee
    const-string v6, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "sendBTEvent"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.sec.android.ims.ImsBTConstants"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "SWITCH_HOLDING_AND_ACTIVECALL"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_322
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_322} :catch_329

    .line 4246
    :goto_322
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v13}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4243
    :catch_329
    move-exception v1

    .line 4244
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "Bluetooth HS/HF"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_322

    .line 4251
    .end local v1           #e:Ljava/lang/Exception;
    :cond_334
    if-ne v2, v13, :cond_386

    .line 4257
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_35e

    .line 4258
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_347

    const-string v6, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4259
    :cond_347
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z
    invoke-static {v6, v8}, Lcom/android/phone/BluetoothHandsfree;->access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4260
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 4261
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4263
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6, v8}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 4295
    :cond_357
    :goto_357
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v13}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4264
    :cond_35e
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->CallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v6, v7, :cond_357

    .line 4265
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_373

    const-string v6, "CHLD:2 Swap Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4267
    :cond_373
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 4269
    const-string v6, "cmdaSwapSecondCallState() Called"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4270
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 4271
    const-string v6, "switchHoldingAndActive Called"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    goto :goto_357

    .line 4274
    :cond_386
    if-ne v2, v8, :cond_3d5

    .line 4277
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_3d1

    .line 4278
    const-string v6, "held VoIP call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4279
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    if-eqz v6, :cond_3b6

    .line 4280
    const-string v6, "GSM CHLD:2 answer CS call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4281
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_357

    .line 4282
    :cond_3b6
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_3cb

    .line 4283
    const-string v6, "GSM CHLD:2 switch CS call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4284
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_357

    .line 4286
    :cond_3cb
    const-string v6, "GSM CHLD:2 do not anything on CS call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    goto :goto_357

    .line 4289
    :cond_3d1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_357

    .line 4293
    :cond_3d5
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4296
    :cond_3ee
    aget-object v6, p1, v12

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_478

    .line 4297
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v7, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4298
    if-ne v2, v13, :cond_441

    .line 4299
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 4302
    .local v5, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->CallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v6, v7, :cond_42d

    .line 4303
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_423

    const-string v6, "CHLD:3 Merge Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4304
    :cond_423
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    .line 4317
    .end local v5           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_426
    :goto_426
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v13}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4305
    .restart local v5       #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_42d
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->CallState()Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    if-ne v6, v7, :cond_426

    .line 4308
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$9000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    goto :goto_426

    .line 4310
    .end local v5           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_441
    if-ne v2, v8, :cond_45f

    .line 4311
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_426

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_426

    .line 4312
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_426

    .line 4315
    :cond_45f
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4320
    :cond_478
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_92

    .line 4200
    .restart local v3       #result:Z
    :catch_47f
    move-exception v6

    goto/16 :goto_253

    .line 4182
    .end local v3           #result:Z
    :catch_482
    move-exception v6

    goto/16 :goto_208

    .line 4122
    .restart local v3       #result:Z
    :catch_485
    move-exception v6

    goto/16 :goto_10c
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 4324
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4325
    const-string v2, "sec_korea_bluetooth"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 4326
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CHLD: (0,1,2)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4330
    :goto_15
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 4331
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$7800(Lcom/android/phone/BluetoothHandsfree;)V

    .line 4332
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$7900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isInVoIPcallAudio()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$8000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isInVoLTEcallAudio()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 4334
    :cond_39
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$9100(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$9100(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:0A:30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 4335
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "jci carkit, open sco after 300ms..."

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4337
    :cond_5a
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v3

    .line 4338
    :try_start_5d
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4339
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4340
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForJCI:Z
    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHandsfree;->access$802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4341
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_5d .. :try_end_7b} :catchall_8a

    .line 4364
    .end local v1           #msg:Landroid/os/Message;
    :cond_7b
    :goto_7b
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v2

    .line 4328
    :cond_82
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CHLD: (0,1,2,3)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_15

    .line 4341
    :catchall_8a
    move-exception v2

    :try_start_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v2

    .line 4345
    :cond_8d
    const-wide/16 v2, 0x96

    :try_start_8f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_92} :catch_98

    .line 4347
    :goto_92
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    goto :goto_7b

    .line 4346
    :catch_98
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92

    .line 4349
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_a1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 4351
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_7b

    .line 4354
    :cond_bb
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mVoIPPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_cf

    .line 4355
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_7b

    .line 4359
    :cond_cf
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isImsCallRinging:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 4360
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_7b
.end method
