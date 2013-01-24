.class Lcom/android/phone/NetworkSetting$3;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/16 v6, 0x190

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 227
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_230

    .line 403
    :cond_b
    :goto_b
    :sswitch_b
    return-void

    .line 229
    :sswitch_c
    const-string v1, "phone"

    const-string v2, "EVENT_PLMN_REFRESH."

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 230
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 231
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updatePLMNmode()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)V

    goto :goto_b

    .line 236
    :sswitch_21
    const-string v1, "phone"

    const-string v2, "Search completed."

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 237
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    .line 239
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 240
    const-string v1, "1"

    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 241
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "0"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 242
    const-string v1, "phone"

    const-string v2, "EVENT_NETWORK_SCAN_COMPLETED, Set Automatic"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_55
    const-string v1, "network_manual_selection_when_bootup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 248
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$802(Lcom/android/phone/NetworkSetting;Z)Z

    .line 252
    :cond_81
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 253
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_b

    .line 262
    :sswitch_90
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 264
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 266
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 267
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "1"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 270
    :cond_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e8

    .line 272
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "manual network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 274
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 276
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->handleManualFailCase()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)V

    .line 281
    :cond_d2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 293
    :goto_d9
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 294
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_b

    .line 283
    :cond_e8
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "manual network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 285
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ff

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 287
    :cond_ff
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->handleManualSuccessCase()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;)V

    goto :goto_d9

    .line 289
    :cond_105
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1500(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_d9

    .line 301
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_10b
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 303
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 304
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "0"

    #calls: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 307
    :cond_121
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1600(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_144

    .line 308
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1602(Lcom/android/phone/NetworkSetting;Z)Z

    .line 309
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 310
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_b

    .line 315
    :cond_144
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_17b

    .line 316
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1, v4}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 320
    :cond_14d
    :goto_14d
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 323
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_185

    .line 324
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "automatic network selection: failed!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 325
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 335
    :cond_16c
    :goto_16c
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 336
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->enableMobileData()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_b

    .line 317
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_17b
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_14d

    .line 318
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v1, v6}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    goto :goto_14d

    .line 327
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_185
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "automatic network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 329
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_196

    .line 330
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1500(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_16c

    .line 331
    :cond_196
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_16c

    .line 332
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$1500(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_16c

    .line 343
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1a0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->loadNetworksList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_b

    .line 349
    :sswitch_1a7
    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 350
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1802(Lcom/android/phone/NetworkSetting;Z)Z

    .line 352
    :cond_1b4
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1900(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_b

    .line 358
    :sswitch_1bb
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$1900(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_b

    .line 364
    :sswitch_1c2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_b

    .line 370
    :sswitch_1c9
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2100(Lcom/android/phone/NetworkSetting;)V

    .line 375
    :sswitch_1ce
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    .line 377
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_21a

    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$2200()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21a

    .line 379
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v1, v3}, Lcom/android/phone/NetworkSetting;->access$1602(Lcom/android/phone/NetworkSetting;Z)Z

    .line 380
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$1900(Lcom/android/phone/NetworkSetting;I)V

    .line 381
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iput-boolean v3, v1, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    .line 391
    :goto_204
    :sswitch_204
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)I

    move-result v1

    const/16 v2, -0x2713

    if-ne v1, v2, :cond_b

    .line 392
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;)V

    .line 393
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1, v5}, Lcom/android/phone/NetworkSetting;->access$2302(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_b

    .line 383
    :cond_21a
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2bc

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_204

    .line 399
    :sswitch_228
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnectionAutoSelect()V
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_b

    .line 227
    nop

    :sswitch_data_230
    .sparse-switch
        0x64 -> :sswitch_21
        0xc8 -> :sswitch_90
        0x12c -> :sswitch_10b
        0x190 -> :sswitch_10b
        0x1f4 -> :sswitch_228
        0x258 -> :sswitch_1c9
        0x2bc -> :sswitch_1ce
        0x320 -> :sswitch_b
        0x384 -> :sswitch_c
        0x7d0 -> :sswitch_1a0
        0x7d1 -> :sswitch_1a7
        0x7d2 -> :sswitch_1c2
        0x7d3 -> :sswitch_1bb
        0xbb9 -> :sswitch_204
    .end sparse-switch
.end method
