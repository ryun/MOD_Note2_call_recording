.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRecord:Z

.field public canSwap:Z

.field public canTransfer:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "InCallControlState constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;Z)V

    .line 94
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 95
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 96
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 309
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 313
    const-string v0, "InCallControlState"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 314
    return-void
.end method


# virtual methods
.method public dumpState()V
    .registers 3

    .prologue
    .line 288
    const-string v0, "InCallControlState:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canAddCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canEndCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canSwap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canTransfer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  muteIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public update()V
    .registers 18

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    .line 104
    .local v12, state:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 105
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 106
    .local v4, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_210

    const/4 v5, 0x1

    .line 107
    .local v5, hasActiveForegroundCall:Z
    :goto_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    .line 110
    .local v6, hasHoldingCall:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_220

    .line 114
    const/4 v13, 0x0

    .line 117
    .local v13, wfcOn:Z
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "com.movial.ipphone.IPPhone"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 118
    const/4 v13, 0x1

    .line 119
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4a} :catch_213

    .line 126
    :cond_4a
    :goto_4a
    if-nez v13, :cond_69

    .line 127
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 128
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v14, :cond_21d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v14

    if-nez v14, :cond_21d

    const/4 v14, 0x1

    :goto_65
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 138
    .end local v13           #wfcOn:Z
    :cond_69
    :goto_69
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 139
    const-string v14, "usa_cdma_emergency_concept"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a8

    .line 141
    if-eqz v5, :cond_a8

    .line 142
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 143
    .local v1, c:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_22c

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    if-nez v14, :cond_22c

    const/4 v14, 0x1

    :goto_a3
    and-int/2addr v14, v15

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 146
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    :cond_a8
    const-string v14, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c6

    .line 147
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    .line 148
    .local v11, phoneType:I
    const/4 v14, 0x2

    if-ne v11, v14, :cond_22f

    .line 149
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v14

    if-eqz v14, :cond_c6

    .line 150
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 166
    .end local v11           #phoneType:I
    :cond_c6
    :goto_c6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v14

    if-nez v14, :cond_e4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v14

    if-nez v14, :cond_e4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v14

    if-eqz v14, :cond_263

    :cond_e4
    const/4 v14, 0x1

    :goto_e5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 171
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    .line 175
    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_266

    .line 176
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 189
    :goto_116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v14

    if-eqz v14, :cond_2a9

    .line 190
    const-string v14, "speaker_bt_button_disable_with_headset_plug"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_29b

    .line 191
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v14

    if-eqz v14, :cond_28d

    .line 192
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 204
    :goto_137
    const-string v14, "voice_call_recording"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16f

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v14, v14, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v14

    if-eqz v14, :cond_150

    .line 206
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 207
    :cond_150
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v14, :cond_164

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_2b0

    :cond_164
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-nez v14, :cond_2b0

    const/4 v14, 0x1

    :goto_16b
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canRecord:Z

    .line 214
    :cond_16f
    const-string v14, "no_receiver_in_call"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2ed

    .line 217
    const-string v14, "speaker_bt_button_disable_with_headset_plug"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2d0

    .line 218
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v14

    if-eqz v14, :cond_2b3

    .line 219
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 220
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 237
    :goto_193
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 238
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    const/4 v8, 0x0

    .line 239
    .local v8, isEmergencyCall:Z
    if-eqz v1, :cond_1aa

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    .line 242
    :cond_1aa
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    .line 243
    .local v7, isECM:Z
    if-nez v8, :cond_1b6

    if-eqz v7, :cond_2fb

    .line 244
    :cond_1b6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 245
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 253
    :goto_1c0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 260
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-nez v14, :cond_1ea

    const-string v14, "feature_ctc"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_312

    .line 263
    :cond_1ea
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 267
    if-eqz v6, :cond_309

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_309

    const/4 v14, 0x1

    :goto_1f6
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 270
    if-eqz v5, :cond_30c

    if-nez v6, :cond_30c

    const/4 v9, 0x1

    .line 271
    .local v9, okToHold:Z
    :goto_1ff
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 272
    .local v10, okToUnhold:Z
    if-nez v9, :cond_207

    if-eqz v10, :cond_30f

    :cond_207
    const/4 v14, 0x1

    :goto_208
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 284
    .end local v9           #okToHold:Z
    .end local v10           #okToUnhold:Z
    :cond_20c
    :goto_20c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 285
    return-void

    .line 106
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #hasActiveForegroundCall:Z
    .end local v6           #hasHoldingCall:Z
    .end local v7           #isECM:Z
    .end local v8           #isEmergencyCall:Z
    :cond_210
    const/4 v5, 0x0

    goto/16 :goto_19

    .line 121
    .restart local v5       #hasActiveForegroundCall:Z
    .restart local v6       #hasHoldingCall:Z
    .restart local v13       #wfcOn:Z
    :catch_213
    move-exception v2

    .line 122
    .local v2, e:Ljava/lang/Exception;
    const-string v14, "IPPhone doesn\'t exists"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 128
    .end local v2           #e:Ljava/lang/Exception;
    :cond_21d
    const/4 v14, 0x0

    goto/16 :goto_65

    .line 133
    .end local v13           #wfcOn:Z
    :cond_220
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 134
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_69

    .line 143
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    :cond_22c
    const/4 v14, 0x0

    goto/16 :goto_a3

    .line 151
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .restart local v11       #phoneType:I
    :cond_22f
    const/4 v14, 0x1

    if-eq v11, v14, :cond_235

    const/4 v14, 0x3

    if-ne v11, v14, :cond_24a

    .line 153
    :cond_235
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    if-eqz v14, :cond_c6

    .line 154
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    goto/16 :goto_c6

    .line 156
    :cond_24a
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected phone type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 166
    .end local v11           #phoneType:I
    :cond_263
    const/4 v14, 0x0

    goto/16 :goto_e5

    .line 178
    :cond_266
    const-string v14, "speaker_bt_button_disable_with_headset_plug"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_286

    .line 179
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v14

    if-eqz v14, :cond_27f

    .line 180
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    goto/16 :goto_116

    .line 182
    :cond_27f
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    goto/16 :goto_116

    .line 185
    :cond_286
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    goto/16 :goto_116

    .line 194
    :cond_28d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_137

    .line 197
    :cond_29b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v14}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_137

    .line 200
    :cond_2a9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_137

    .line 207
    :cond_2b0
    const/4 v14, 0x0

    goto/16 :goto_16b

    .line 222
    :cond_2b3
    sget-object v14, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v12, v14, :cond_2ce

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v14, :cond_2ce

    const/4 v14, 0x1

    :goto_2bc
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    goto/16 :goto_193

    .line 222
    :cond_2ce
    const/4 v14, 0x0

    goto :goto_2bc

    .line 226
    :cond_2d0
    sget-object v14, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v12, v14, :cond_2eb

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v14, :cond_2eb

    const/4 v14, 0x1

    :goto_2d9
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    goto/16 :goto_193

    .line 226
    :cond_2eb
    const/4 v14, 0x0

    goto :goto_2d9

    .line 230
    :cond_2ed
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    goto/16 :goto_193

    .line 247
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    .restart local v7       #isECM:Z
    .restart local v8       #isEmergencyCall:Z
    :cond_2fb
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 248
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_1c0

    .line 267
    :cond_309
    const/4 v14, 0x0

    goto/16 :goto_1f6

    .line 270
    :cond_30c
    const/4 v9, 0x0

    goto/16 :goto_1ff

    .line 272
    .restart local v9       #okToHold:Z
    .restart local v10       #okToUnhold:Z
    :cond_30f
    const/4 v14, 0x0

    goto/16 :goto_208

    .line 275
    .end local v9           #okToHold:Z
    .end local v10           #okToUnhold:Z
    :cond_312
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 276
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 277
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 279
    const-string v14, "support_lgt_multi_call"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20c

    .line 280
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setMultiCallState()V

    goto/16 :goto_20c
.end method
