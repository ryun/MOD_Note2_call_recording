.class Lcom/android/phone/InVTCallScreen$2;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 29
    .parameter "msg"

    .prologue
    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_39

    .line 1193
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Handler: ignoring message "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; we\'re destroyed!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1728
    :cond_38
    :goto_38
    :sswitch_38
    return-void

    .line 1197
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-nez v21, :cond_71

    .line 1198
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_71

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Handler: handling message "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " while not in foreground"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1207
    :cond_71
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 1208
    .local v3, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_c00

    goto :goto_38

    .line 1340
    :sswitch_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$3200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_38

    .line 1210
    :sswitch_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_38

    .line 1215
    :sswitch_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_38

    .line 1219
    :sswitch_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "InVTCallScreen ::PHONE_DISCONNECT - Processing started"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1222
    .local v8, disconectResult:Landroid/os/AsyncResult;
    iget-object v4, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1223
    .local v4, c:Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_141

    .line 1224
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_38

    .line 1227
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v12

    .line 1228
    .local v12, o:Ljava/lang/Object;
    instance-of v0, v12, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_141

    move-object v9, v12

    .line 1229
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 1230
    .local v9, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v21

    if-eqz v21, :cond_134

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1232
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_134

    const-string v21, "InVTCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getCallNumber : voicemail - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    #setter for: Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$1002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1238
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v12           #o:Ljava/lang/Object;
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$1102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_169

    .line 1240
    const-string v21, "vt_audio_mixed_recording"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_207

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;)V

    .line 1246
    :cond_169
    :goto_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_180

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    .line 1254
    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_195

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)V

    .line 1257
    :cond_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$1802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    #setter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$1902(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1260
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2002(Z)Z

    .line 1261
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2102(Z)Z

    .line 1264
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2202(Z)Z

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v21

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_243

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-nez v21, :cond_212

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "InVTCallScreen ::PHONE_DISCONNECT - DuringCall - Stoping VT Call"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1243
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_169

    .line 1280
    :cond_212
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$2600()Z

    move-result v21

    if-nez v21, :cond_38

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "InVTCallScreen : PHONE_DISCONNECT - DuringCall - continueOnDisconnection()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_38

    .line 1287
    :cond_243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "InVTCallScreen ::PHONE_DISCONNECT - onDisconnect()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v21

    if-eqz v21, :cond_27f

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$2902(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 1295
    :cond_27f
    if-eqz v4, :cond_2a7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v21

    if-nez v21, :cond_2a7

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)V

    .line 1301
    :goto_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_38

    .line 1299
    :cond_2a7
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    goto :goto_290

    .line 1314
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v8           #disconectResult:Landroid/os/AsyncResult;
    :sswitch_2ac
    const-string v21, "InVTCallScreen"

    const-string v22, "EVENT_HEADSET_PLUG_STATE_CHANGED"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v21

    if-nez v21, :cond_38

    .line 1316
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_32c

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v21

    if-eqz v21, :cond_307

    if-eqz v3, :cond_307

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v21

    if-nez v21, :cond_307

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v21

    if-nez v21, :cond_307

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1333
    :cond_307
    :goto_307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSpk:Landroid/widget/ToggleButton;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v21

    if-eqz v21, :cond_38

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSpk:Landroid/widget/ToggleButton;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_38

    .line 1330
    :cond_32c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_307

    .line 1344
    :sswitch_33a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->onMMICancel()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1355
    :sswitch_345
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/MmiCode;

    .line 1358
    .local v11, mmiCode:Lcom/android/internal/telephony/MmiCode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    .line 1359
    .local v13, phoneType:I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v13, v0, :cond_380

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v3, v11, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_38

    .line 1361
    :cond_380
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_38

    .line 1362
    invoke-interface {v11}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_38

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_3cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v21

    if-eqz v21, :cond_3cb

    .line 1367
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "Got MMI_COMPLETE, but Call exist..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1371
    :cond_3cb
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_3dc

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "Got MMI_COMPLETE, but Call not exist... so end VT Call Screen"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1373
    :cond_3dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    goto/16 :goto_38

    .line 1381
    .end local v11           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v13           #phoneType:I
    :sswitch_3e7
    const-string v21, "vt_post_dial_feature_support"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_413

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    #calls: Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_38

    .line 1385
    :cond_413
    const-string v21, "InVTCallScreen"

    const-string v22, "POST_ON_DIAL_CHARS, but feature does not supported"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 1398
    :sswitch_41c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1402
    :sswitch_427
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_438

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "DELAYED_MUTE_BUTTON_ENABLE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1403
    :cond_438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static/range {v22 .. v22}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v22

    #calls: Lcom/android/phone/InVTCallScreen;->updateMuteButton(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_38

    .line 1410
    :sswitch_458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    goto/16 :goto_38

    .line 1414
    :sswitch_465
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3900()Z

    move-result v21

    if-eqz v21, :cond_476

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1420
    :cond_476
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_38

    .line 1424
    :sswitch_47f
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3900()Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "TOUCH_LOCK_TIMER..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1430
    :sswitch_492
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3900()Z

    move-result v21

    if-eqz v21, :cond_4a3

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1442
    :cond_4a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v21

    if-eqz v21, :cond_4bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v21

    if-nez v21, :cond_4d5

    .line 1443
    :cond_4bb
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v21

    if-nez v21, :cond_4d5

    .line 1444
    const-string v21, "InVTCallScreen"

    const-string v22, "During Call BT or EarPhone is not connected, then switch on the speaker. "

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1451
    :cond_4d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHeadset:Landroid/widget/ToggleButton;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v21

    if-eqz v21, :cond_504

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHeadset:Landroid/widget/ToggleButton;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1456
    :cond_504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSpk:Landroid/widget/ToggleButton;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v21

    if-eqz v21, :cond_38

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSpk:Landroid/widget/ToggleButton;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_38

    .line 1464
    :sswitch_529
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_53a

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1466
    :cond_53a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1469
    .local v5, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_38

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1479
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_559
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_56a

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1481
    :cond_56a
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v21

    sget-object v22, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_38

    .line 1483
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1504
    :sswitch_58e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v21

    if-eqz v21, :cond_38

    .line 1505
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_5ab

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1507
    :cond_5ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->dismiss()V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_38

    .line 1514
    :sswitch_5c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$4302(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_38

    .line 1519
    :sswitch_5d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateButtonUI()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1522
    :sswitch_5dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1526
    :sswitch_5e8
    const-string v21, "InVTCallScreen"

    const-string v22, "mHandler:Response Received from Gallery"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)V

    .line 1530
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_38

    .line 1534
    :sswitch_608
    const-string v21, "InVTCallScreen"

    const-string v22, "mHandler:Response on low memory"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v21

    if-eqz v21, :cond_38

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_699

    .line 1537
    const-string v21, "vt_audio_mixed_recording"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_68f

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;)V

    .line 1545
    :cond_638
    :goto_638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;Z)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$4802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1540
    :cond_68f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_638

    .line 1542
    :cond_699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_638

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    goto :goto_638

    .line 1557
    :sswitch_6b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)V

    .line 1558
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_38

    .line 1562
    :sswitch_6bf
    const-string v21, "InVTCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mHandler:start recording image casting: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Image:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Video:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-nez v21, :cond_72d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-nez v21, :cond_72d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_743

    .line 1565
    :cond_72d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1568
    :cond_743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "preset_name"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1570
    .local v15, preset_name:Ljava/lang/String;
    if-nez v15, :cond_762

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1573
    :cond_762
    const-string v21, "photo"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_798

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "preset_path"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1576
    .local v14, presetImageSrc:Ljava/lang/String;
    if-eqz v14, :cond_78b

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static {v0, v14}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1579
    :cond_78b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1581
    .end local v14           #presetImageSrc:Ljava/lang/String;
    :cond_798
    const-string v21, "Default"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7af

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1583
    :cond_7af
    const-string v21, "video"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_837

    .line 1584
    const/16 v20, 0x0

    .line 1585
    .local v20, videoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "preset_video_path"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1588
    .local v18, uriString:Ljava/lang/String;
    if-eqz v18, :cond_82a

    .line 1589
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1590
    if-eqz v20, :cond_81d

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    #calls: Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 1592
    .local v19, videoPath:Ljava/lang/String;
    if-eqz v19, :cond_805

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1596
    :cond_805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "Video path is null, so setting Default Image "

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1600
    .end local v19           #videoPath:Ljava/lang/String;
    :cond_81d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1603
    :cond_82a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1606
    .end local v18           #uriString:Ljava/lang/String;
    .end local v20           #videoUri:Landroid/net/Uri;
    :cond_837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1616
    .end local v15           #preset_name:Ljava/lang/String;
    :sswitch_844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_92f

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationFar:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v22

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$6102(Lcom/android/phone/InVTCallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1623
    :goto_863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    move/from16 v21, v0

    if-nez v21, :cond_911

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v21

    if-eqz v21, :cond_911

    const-string v21, "kor_cs_vt"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_88d

    const-string v21, "vi_animation"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_911

    .line 1625
    :cond_88d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v21

    const-wide/16 v22, 0x1f4

    invoke-virtual/range {v21 .. v23}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v21

    new-instance v22, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v21

    const/high16 v22, 0x3f80

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1630
    const-wide/16 v6, 0x4b0

    .line 1631
    .local v6, delayTime:J
    const-string v21, "kor_cs_vt"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8f2

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_944

    .line 1633
    const-wide/16 v6, 0x5dc

    .line 1638
    :cond_8f2
    :goto_8f2
    const-string v21, "kor_qc_cs_vt"

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8fc

    .line 1639
    const-wide/16 v6, 0x7d0

    .line 1642
    :cond_8fc
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    .line 1643
    .local v17, switchCameraHandler:Landroid/os/Handler;
    new-instance v21, Lcom/android/phone/InVTCallScreen$2$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/InVTCallScreen$2$1;-><init>(Lcom/android/phone/InVTCallScreen$2;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1654
    .end local v6           #delayTime:J
    .end local v17           #switchCameraHandler:Landroid/os/Handler;
    :cond_911
    new-instance v21, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;-><init>(Lcom/android/phone/InVTCallScreen;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "start"

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_38

    .line 1620
    :cond_92f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwipeAnimationNear:Landroid/widget/ImageView;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/InVTCallScreen;->access$6300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ImageView;

    move-result-object v22

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchedViewAnimationImage:Landroid/widget/ImageView;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$6102(Lcom/android/phone/InVTCallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto/16 :goto_863

    .line 1635
    .restart local v6       #delayTime:J
    :cond_944
    const-wide/16 v6, 0x514

    goto :goto_8f2

    .line 1657
    .end local v6           #delayTime:J
    :sswitch_947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_974

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_974

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_38

    .line 1659
    :cond_974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_38

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_38

    .line 1664
    :sswitch_995
    const-string v21, "InVTCallScreen"

    const-string v22, "STOP_CAPTURE_IMAGE_ANIMATION:: Stop image animation"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_38

    .line 1670
    :sswitch_9cd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/telephony/ServiceState;

    .line 1671
    .local v16, state:Landroid/telephony/ServiceState;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v21

    if-nez v21, :cond_38

    .line 1676
    .end local v16           #state:Landroid/telephony/ServiceState;
    :sswitch_9e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x97

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_a04

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x97

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 1679
    :cond_a04
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v21

    if-eqz v21, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1680
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_a82

    const-string v21, "InVTCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "STATE_IN_SERVICE : start call "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :goto_a48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$6702(Lcom/android/phone/InVTCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1686
    .local v10, intent:Landroid/content/Intent;
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 1681
    .end local v10           #intent:Landroid/content/Intent;
    :cond_a82
    const-string v21, "InVTCallScreen"

    const-string v22, "STATE_IN_SERVICE : start call"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a48

    .line 1691
    :sswitch_a8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v21

    if-eqz v21, :cond_38

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v21

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    goto/16 :goto_38

    .line 1695
    :sswitch_aa7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6800(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_ae0

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3600(Lcom/android/phone/InVTCallScreen;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.CALL"

    const-string v24, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/phone/InVTCallScreen;->access$6800(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 1699
    :cond_ae0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    const-string v22, "case:EVENT_FALLBACK_AUTOMATIC FallBackCallNumber is null.."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$3600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1706
    :sswitch_af6
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v21

    if-eqz v21, :cond_b36

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MULTIMEDIA_RINGBACK_TONE_TIMER mMRBTstart:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  mMRBTend:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/InVTCallScreen;->access$7000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1709
    :cond_b36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-nez v21, :cond_b4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    if-eqz v21, :cond_b72

    :cond_b4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_38

    .line 1710
    :cond_b72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v21

    if-eqz v21, :cond_38

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->reset()V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->startMRBTTimer()V

    .line 1714
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v21

    if-eqz v21, :cond_bd8

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 1718
    :cond_bd8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v21

    if-eqz v21, :cond_38

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_38

    .line 1725
    :sswitch_bf5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_38

    .line 1208
    :sswitch_data_c00
    .sparse-switch
        0x33 -> :sswitch_7f
        0x34 -> :sswitch_345
        0x35 -> :sswitch_33a
        0x65 -> :sswitch_ab
        0x66 -> :sswitch_c2
        0x67 -> :sswitch_2ac
        0x68 -> :sswitch_3e7
        0x6a -> :sswitch_38
        0x6b -> :sswitch_38
        0x6c -> :sswitch_41c
        0x6e -> :sswitch_95
        0x6f -> :sswitch_458
        0x70 -> :sswitch_465
        0x71 -> :sswitch_47f
        0x72 -> :sswitch_492
        0x73 -> :sswitch_529
        0x74 -> :sswitch_559
        0x75 -> :sswitch_38
        0x76 -> :sswitch_38
        0x77 -> :sswitch_38
        0x78 -> :sswitch_58e
        0x79 -> :sswitch_5c5
        0x7a -> :sswitch_5d2
        0x7b -> :sswitch_5dd
        0x7c -> :sswitch_5e8
        0x7d -> :sswitch_608
        0x7e -> :sswitch_6bf
        0x80 -> :sswitch_995
        0x81 -> :sswitch_6b1
        0x82 -> :sswitch_427
        0x83 -> :sswitch_bf5
        0x96 -> :sswitch_9cd
        0x97 -> :sswitch_9e3
        0xa0 -> :sswitch_a8a
        0xaa -> :sswitch_af6
        0x309 -> :sswitch_aa7
        0x3e7 -> :sswitch_844
        0x458 -> :sswitch_947
        0x270f -> :sswitch_38
    .end sparse-switch
.end method
