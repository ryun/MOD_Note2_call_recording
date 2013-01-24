.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 220
    const-string v0, "OutgoingCallReceiver"

    const-string v3, "doReceive: "

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "OutgoingCallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    if-eqz v0, :cond_31

    .line 230
    const-string v0, "OutgoingCallReceiver"

    const-string v2, "CALL already placed -- returning."

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 424
    :cond_30
    :goto_30
    return-void

    .line 238
    :cond_31
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v4

    .line 239
    const-string v0, "OutgoingCallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- got number from resultData: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 243
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->checkAddCall(Lcom/android/phone/PhoneApp;)Z
    invoke-static {v0, v6}, Lcom/android/phone/OutgoingCallBroadcaster;->access$400(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/phone/PhoneApp;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 244
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v1, "Can\'t Add Call"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto :goto_30

    .line 254
    :cond_72
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 255
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v3, :cond_bd

    move v0, v1

    .line 257
    :goto_83
    iget-object v3, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v5, :cond_bf

    move v3, v1

    .line 267
    :goto_8c
    iget-object v5, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v5, v7, :cond_9c

    iget-object v5, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v5, v7, :cond_39c

    :cond_9c
    move v5, v1

    .line 274
    :goto_9d
    if-nez v0, :cond_a1

    if-eqz v3, :cond_c1

    .line 280
    :cond_a1
    if-eqz v3, :cond_a6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 281
    :cond_a6
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 282
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 292
    :cond_ac
    const-string v0, "android.phone.extra.calltype"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 294
    if-nez v4, :cond_cc

    .line 295
    const-string v0, "OutgoingCallReceiver"

    const-string v2, "CALL cancelled (null number), returning..."

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_30

    :cond_bd
    move v0, v2

    .line 255
    goto :goto_83

    :cond_bf
    move v3, v2

    .line 257
    goto :goto_8c

    .line 283
    :cond_c1
    if-eqz v5, :cond_ac

    .line 286
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "OTASP call is active: disallowing a new outgoing call."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 297
    :cond_cc
    iget-object v3, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_ef

    iget-object v3, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v5, :cond_ef

    iget-object v3, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 300
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "Call is active, a 2nd OTA call cancelled -- returning."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 302
    :cond_ef
    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 307
    const-string v3, "OutgoingCallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot modify outgoing call to emergency number "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v3, "emergency_vtcall"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    if-eq v0, v1, :cond_30

    .line 312
    :cond_11d
    const-string v0, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    if-nez v0, :cond_12e

    .line 315
    const-string v0, "OutgoingCallReceiver"

    const-string v2, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_30

    .line 319
    :cond_12e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 322
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_398

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_398

    .line 323
    const-string v0, "IS_CONF_CALL"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 324
    const-string v3, "ims_vt_call_conference"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_229

    if-eqz v0, :cond_229

    .line 325
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$500(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v3, v2

    .line 337
    :goto_159
    if-eqz v3, :cond_163

    .line 338
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_163
    const-string v3, "OutgoingCallReceiver"

    const-string v4, "doReceive: proceeding with call..."

    invoke-static {v3, v4, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 343
    const-string v3, "OutgoingCallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- uri: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v3, "OutgoingCallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- actual number to dial: \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v3, "ims_vt_call"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_309

    .line 348
    iget-object v3, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_232

    move v3, v1

    .line 349
    :goto_1b3
    const-string v4, "android.intent.extra.VTCallDialer"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 350
    const-string v4, "IS_CONF_CALL"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 352
    iget-object v4, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 353
    iget-object v9, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 354
    iget-object v10, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    .line 355
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1ef

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1ef

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_234

    :cond_1ef
    move v4, v1

    .line 356
    :goto_1f0
    const-string v9, "OutgoingCallReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "phone is in call"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v9, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v9, :cond_253

    .line 358
    iget-object v9, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v9

    if-eqz v9, :cond_236

    iget-object v9, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v9

    if-ne v9, v1, :cond_236

    .line 359
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "Already there is a Ringing VT Call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 328
    :cond_229
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$600(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v3, v1

    goto/16 :goto_159

    :cond_232
    move v3, v2

    .line 348
    goto :goto_1b3

    :cond_234
    move v4, v2

    .line 355
    goto :goto_1f0

    .line 362
    :cond_236
    iget-object v9, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_253

    iget-object v9, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v9

    if-ne v9, v1, :cond_253

    .line 363
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "Already there is a Foreground VT Call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 367
    :cond_253
    if-eqz v7, :cond_2fd

    .line 369
    const-string v7, "OutgoingCallReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phoneIsUse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz v4, :cond_2a5

    .line 371
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v1, :cond_289

    iget-object v0, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_30

    .line 375
    :cond_289
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "Can\'t make video call while cs call is running"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    .line 377
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0e053a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_30

    .line 382
    :cond_2a5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 383
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v0, "ims_vt_call_conference"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 386
    const-string v0, "IS_CONF_CALL"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    :cond_2be
    invoke-static {p2, v1}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 390
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    .line 393
    const-class v0, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 394
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const/high16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    const-string v0, "auto_test"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 397
    const-string v2, "auto_test"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    const-string v0, "OutgoingCallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReceive(): calling startActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_30

    .line 402
    :cond_2fd
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    .line 423
    :cond_302
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v1, p1, p2, v5, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$700(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 405
    :cond_309
    const-string v3, "kor_cs_vt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_302

    .line 407
    iget-object v3, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 408
    iget-object v4, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 409
    iget-object v7, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 410
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_341

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_341

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_342

    :cond_341
    move v2, v1

    .line 411
    :cond_342
    const-string v3, "OutgoingCallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInCall = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v2, :cond_302

    .line 413
    iget-object v2, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_37b

    iget-object v2, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-ne v2, v1, :cond_37b

    .line 414
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "Already there is a Ringing VT Call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 417
    :cond_37b
    iget-object v2, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_302

    iget-object v2, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-ne v2, v1, :cond_302

    .line 418
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "Already there is a Foreground VT Call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    :cond_398
    move v3, v1

    move-object v0, v4

    goto/16 :goto_159

    :cond_39c
    move v5, v2

    goto/16 :goto_9d
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 215
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "OutgoingCallReceiver is going to finish the Activity itself."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 217
    return-void
.end method
