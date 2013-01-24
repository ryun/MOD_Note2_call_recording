.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field public static isCtcRoamingCall:Z

.field public static mCtcRoamingCallNumber:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private cdmaBarringPopup:Z

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

.field private mOriginCallIntent:Landroid/content/Intent;

.field private mRtsValueForKor:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallController;->isCtcRoamingCall:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 4
    .parameter "app"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 88
    iput-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    .line 137
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 138
    return-void
.end method

.method private checkForOtaspCall(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 1067
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->isOtaspCallIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1068
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForOtaspCall: handling OTASP intent! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 1080
    :goto_21
    return-void

    .line 1078
    :cond_22
    const-string v0, "checkForOtaspCall: not an OTASP call."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .registers 7
    .parameter "state"

    .prologue
    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 842
    packed-switch p1, :pswitch_data_80

    .line 878
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected ServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    :pswitch_32
    const-string v2, "support_cs_svc_prop"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 845
    const-string v2, "ril.cs_svc"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, isCsSvcEnable:Ljava/lang/String;
    if-eqz v0, :cond_65

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.cs_svc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 848
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    .line 875
    .end local v0           #isCsSvcEnable:Ljava/lang/String;
    :cond_64
    :goto_64
    return-object v1

    .line 852
    :cond_65
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_64

    .line 856
    :pswitch_68
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_64

    .line 867
    :pswitch_6b
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_64

    .line 871
    :pswitch_6e
    const-string v2, "limited_service_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 872
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    .line 873
    .local v1, korStatus:Lcom/android/phone/Constants$CallStatusCode;
    if-nez v1, :cond_64

    .line 875
    .end local v1           #korStatus:Lcom/android/phone/Constants$CallStatusCode;
    :cond_7d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_64

    .line 842
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_32
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
    .end packed-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 7
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOutgoingCallError(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 906
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_f8

    .line 1054
    :pswitch_26
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1056
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 1059
    :goto_43
    return-void

    .line 910
    :pswitch_44
    const-string v1, "CallController"

    const-string v2, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_43

    .line 921
    :pswitch_4c
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 933
    :pswitch_52
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 940
    :pswitch_58
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 945
    :pswitch_5e
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 952
    :pswitch_64
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 968
    :pswitch_6a
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_81

    .line 969
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0e01b2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 972
    :cond_81
    sput-boolean v4, Lcom/android/phone/PhoneApp;->mIsInitiatedMMI:Z

    goto :goto_43

    .line 980
    :pswitch_84
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 984
    :pswitch_8a
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 988
    :pswitch_90
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_WITH_POP_UP:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 992
    :pswitch_96
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 996
    :pswitch_9c
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 1000
    :pswitch_a2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 1004
    :pswitch_a8
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 1008
    :pswitch_ae
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 1012
    :pswitch_b4
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 1016
    :pswitch_ba
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_43

    .line 1020
    :pswitch_c0
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 1024
    :pswitch_c7
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 1028
    :pswitch_ce
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 1032
    :pswitch_d5
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 1036
    :pswitch_dc
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 1040
    :pswitch_e3
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 1044
    :pswitch_ea
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 1050
    :pswitch_f1
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_43

    .line 906
    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_44
        :pswitch_26
        :pswitch_4c
        :pswitch_52
        :pswitch_58
        :pswitch_5e
        :pswitch_64
        :pswitch_6a
        :pswitch_84
        :pswitch_8a
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c7
        :pswitch_ce
        :pswitch_d5
        :pswitch_dc
        :pswitch_e3
        :pswitch_ea
        :pswitch_f1
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;
    .registers 5
    .parameter

    .prologue
    .line 120
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 121
    :try_start_3
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_12

    .line 122
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 126
    :goto_e
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 124
    :cond_12
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_e

    .line 127
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1183
    const-string v0, "CallController"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1187
    const-string v0, "CallController"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1188
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .registers 40
    .parameter "intent"

    .prologue
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCallInternal()...  intent = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v15, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 368
    .local v15, inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v34

    .line 369
    .local v34, uri:Landroid/net/Uri;
    if-eqz v34, :cond_10d

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v30

    .line 371
    .local v30, scheme:Ljava/lang/String;
    :goto_28
    const/4 v3, 0x0

    .line 373
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "limited_service_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 379
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v26

    .line 390
    .local v26, okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    :try_start_42
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, number:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- actual number to dial: \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 399
    const-string v2, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 401
    .local v32, sipPhoneUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v2, v0, v4, v1}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- got Phone instance: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", class = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 403
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_126

    .line 404
    const-string v2, "simnum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 405
    const-string v2, "simnum"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 406
    .local v31, simNumber:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========simNumber : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 407
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_111

    .line 408
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v3, v2, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    .line 420
    .end local v31           #simNumber:I
    :cond_d8
    :goto_d8
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_e5
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_42 .. :try_end_e5} :catch_137

    move-result-object v26

    .line 436
    if-nez v4, :cond_14e

    .line 437
    const-string v2, "CallController"

    const-string v6, "placeCall: couldn\'t get a phone number from Intent "

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 438
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    .line 826
    .end local v4           #number:Ljava/lang/String;
    .end local v32           #sipPhoneUri:Ljava/lang/String;
    :cond_10c
    :goto_10c
    return-object v24

    .line 369
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v26           #okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    .end local v30           #scheme:Ljava/lang/String;
    :cond_10d
    const/16 v30, 0x0

    goto/16 :goto_28

    .line 409
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v26       #okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    .restart local v30       #scheme:Ljava/lang/String;
    .restart local v31       #simNumber:I
    .restart local v32       #sipPhoneUri:Ljava/lang/String;
    :cond_111
    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_11d

    .line 410
    :try_start_116
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v3, v2, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    goto :goto_d8

    .line 412
    :cond_11d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto :goto_d8

    .line 415
    .end local v31           #simNumber:I
    :cond_126
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 416
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;
    :try_end_135
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_116 .. :try_end_135} :catch_137

    move-result-object v3

    goto :goto_d8

    .line 423
    .end local v4           #number:Ljava/lang/String;
    .end local v32           #sipPhoneUri:Ljava/lang/String;
    :catch_137
    move-exception v13

    .line 428
    .local v13, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_146

    .line 429
    const-string v2, "Voicemail number not reachable in current SIM card state."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    move-object/from16 v24, v26

    .line 430
    goto :goto_10c

    .line 432
    :cond_146
    const-string v2, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 433
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_10c

    .line 448
    .end local v13           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v32       #sipPhoneUri:Ljava/lang/String;
    :cond_14e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v19

    .line 449
    .local v19, isEmergencyNumber:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v20

    .line 451
    .local v20, isPotentialEmergencyNumber:Z
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 454
    .local v18, isEmergencyIntent:Z
    const-string v2, "dcm_prohibit_secondcall_in_emergency"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 455
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_1a1

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v17

    .line 458
    .local v17, isEmergencyConnection:Z
    if-eqz v17, :cond_1a1

    .line 459
    const-string v2, "CallController"

    const-string v6, "Currently EMERGENCY_CALL connection -- failing call."

    invoke-static {v2, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 465
    .end local v17           #isEmergencyConnection:Z
    :cond_1a1
    const-string v2, "limited_service_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_206

    .line 466
    if-eqz v19, :cond_1e1

    .line 467
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v2

    if-eqz v2, :cond_1b5

    .line 468
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 470
    :cond_1b5
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 471
    .local v27, operatorNumeric:Ljava/lang/String;
    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 472
    .local v28, operatorSimType:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e1

    .line 473
    const-string v2, "45001"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xc

    if-ne v2, v6, :cond_1e1

    .line 474
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 479
    .end local v27           #operatorNumeric:Ljava/lang/String;
    .end local v28           #operatorSimType:Ljava/lang/String;
    :cond_1e1
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_206

    .line 480
    const-string v2, "1"

    const-string v6, "REG"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 481
    .local v22, isSetLGTReg:Z
    const-string v2, "1"

    const-string v6, "AUTH"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 482
    .local v21, isSetLGTAuth:Z
    if-eqz v22, :cond_204

    if-nez v21, :cond_206

    .line 483
    :cond_204
    sget-object v26, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    .line 488
    .end local v21           #isSetLGTAuth:Z
    .end local v22           #isSetLGTReg:Z
    :cond_206
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_271

    .line 489
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_23d

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    const/16 v6, 0x9

    if-eq v2, v6, :cond_23d

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    const/16 v6, 0xa

    if-eq v2, v6, :cond_23d

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    const/16 v6, 0xb

    if-ne v2, v6, :cond_254

    :cond_23d
    const/16 v23, 0x1

    .line 494
    .local v23, isUmtsRat:Z
    :goto_23f
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_271

    if-eqz v23, :cond_271

    .line 495
    if-eqz v19, :cond_271

    .line 496
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v2

    if-eqz v2, :cond_257

    .line 498
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 489
    .end local v23           #isUmtsRat:Z
    :cond_254
    const/16 v23, 0x0

    goto :goto_23f

    .line 500
    .restart local v23       #isUmtsRat:Z
    :cond_257
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 501
    .restart local v27       #operatorNumeric:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isChinaCommercialSim()Z

    move-result v16

    .line 504
    .local v16, isChinaCommercialCard:Z
    if-nez v16, :cond_271

    .line 505
    const-string v2, "45001"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271

    .line 507
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 515
    .end local v16           #isChinaCommercialCard:Z
    .end local v23           #isUmtsRat:Z
    .end local v27           #operatorNumeric:Ljava/lang/String;
    :cond_271
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_285

    .line 516
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 517
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 522
    :cond_285
    :goto_285
    if-eqz v20, :cond_2bc

    if-nez v18, :cond_2bc

    .line 523
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attempted to call potential emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 519
    :cond_2b7
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_285

    .line 527
    :cond_2bc
    if-nez v20, :cond_2ee

    if-eqz v18, :cond_2ee

    .line 528
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with non-potential-emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- failing call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 542
    :cond_2ee
    if-eqz v19, :cond_32e

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_2fc

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_32e

    .line 545
    :cond_2fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 546
    sget-object v26, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 550
    :cond_32e
    const-string v2, "limited_service_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ac

    .line 551
    if-eqz v19, :cond_3ac

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_37a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_3ac

    .line 563
    :cond_37a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 564
    sget-object v26, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 570
    :cond_3ac
    const/16 v33, 0x0

    .line 607
    .local v33, turnRadioOn:Z
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_3b6

    if-eqz v33, :cond_416

    .line 612
    :cond_3b6
    if-eqz v19, :cond_3be

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v26

    if-eq v0, v2, :cond_3c0

    :cond_3be
    if-eqz v33, :cond_3f0

    .line 615
    :cond_3c0
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ca

    if-eqz v33, :cond_3e4

    .line 616
    :cond_3ca
    const-string v2, "CallController"

    const-string v6, "placeCall: Trying to make emergency call while POWER_OFF!"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 618
    if-eqz v33, :cond_3db

    const-string v2, "ril.gsm.ine911.airplanemode"

    const-string v6, "true"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_3db
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallController;->makeEmergencyCallWhileAirPlaneMode(Ljava/lang/String;)V

    .line 628
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 634
    :cond_3e4
    const-string v2, "CallController"

    const-string v6, "placeCall: Trying to make emergency call while POWER_OFF for TMO!"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 635
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_WITH_POP_UP:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 638
    :cond_3f0
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_412

    .line 639
    if-nez v19, :cond_412

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    if-eqz v2, :cond_412

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_412

    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    :cond_412
    move-object/from16 v24, v26

    .line 645
    goto/16 :goto_10c

    .line 649
    :cond_416
    const-string v2, "limited_service_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_427

    .line 650
    if-nez v19, :cond_427

    .line 651
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v24

    .line 652
    .local v24, korStatus:Lcom/android/phone/Constants$CallStatusCode;
    if-nez v24, :cond_10c

    .line 656
    .end local v24           #korStatus:Lcom/android/phone/Constants$CallStatusCode;
    :cond_427
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45c

    .line 657
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_45c

    .line 658
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v2, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    move-object/from16 v29, v0

    .line 659
    .local v29, recorder:Lcom/android/phone/PhoneVoiceRecorder;
    if-eqz v29, :cond_45c

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v2

    if-eqz v2, :cond_45c

    .line 660
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 661
    .local v10, currentTime:J
    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v6

    sub-long v6, v10, v6

    const-wide/16 v36, 0x3e8

    cmp-long v2, v6, v36

    if-lez v2, :cond_45c

    .line 662
    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 667
    .end local v10           #currentTime:J
    .end local v29           #recorder:Lcom/android/phone/PhoneVoiceRecorder;
    :cond_45c
    const-string v2, "ctc_voicecall_additional_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49c

    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 670
    .local v8, action:Ljava/lang/String;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_49c

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49c

    .line 672
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 673
    .local v12, defaultPreferences:Landroid/content/SharedPreferences;
    const-string v2, "cb_outgoing_key"

    const/4 v6, 0x0

    invoke-interface {v12, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 674
    .local v25, nOutgoing:I
    if-eqz v25, :cond_497

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    if-nez v2, :cond_497

    .line 675
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 676
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 679
    :cond_497
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 683
    .end local v8           #action:Ljava/lang/String;
    .end local v12           #defaultPreferences:Landroid/content/SharedPreferences;
    .end local v25           #nOutgoing:I
    :cond_49c
    const-string v2, "ctc_roamingcall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4ac

    .line 684
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/phone/CallController;->setCtcRoamingCallNum(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 687
    :cond_4ac
    const-string v2, "auto_reject_outgoingcall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c4

    .line 688
    if-nez v19, :cond_4c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->isAutoRejectOutgoingCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c4

    .line 689
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 697
    :cond_4c4
    const/4 v2, 0x0

    iput-boolean v2, v15, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    .line 698
    invoke-virtual {v15}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 708
    .local v5, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    if-nez v19, :cond_4d6

    if-eqz v18, :cond_50c

    :cond_4d6
    const/4 v6, 0x1

    :goto_4d7
    iget-object v7, v15, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v9

    .line 715
    .local v9, callStatus:I
    packed-switch v9, :pswitch_data_60c

    .line 824
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: unknown callStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 708
    .end local v9           #callStatus:I
    :cond_50c
    const/4 v6, 0x0

    goto :goto_4d7

    .line 717
    .restart local v9       #callStatus:I
    :pswitch_50e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- inCallUiState.inCallScreenMode = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v15, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 731
    iget-object v2, v15, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v6, :cond_557

    .line 732
    const-string v2, "==>  OTA_NORMAL note: switching to OTA_STATUS_LISTENING."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v6, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 738
    :cond_557
    if-eqz v30, :cond_563

    const-string v2, "voicemail"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_569

    :cond_563
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b4

    :cond_569
    const/16 v35, 0x1

    .line 745
    .local v35, voicemailUriSpecified:Z
    :goto_56b
    move/from16 v0, v35

    iput-boolean v0, v15, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 757
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    .line 764
    const/4 v14, 0x0

    .line 765
    .local v14, exitedEcm:Z
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_583

    if-nez v19, :cond_583

    .line 766
    const-string v2, "CallController"

    const-string v6, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v2, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v14, 0x1

    .line 770
    :cond_583
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_5ae

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v6, :cond_5ae

    .line 775
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 790
    const/4 v2, 0x1

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 796
    :cond_5ae
    if-eqz v14, :cond_5b7

    .line 797
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 738
    .end local v14           #exitedEcm:Z
    .end local v35           #voicemailUriSpecified:Z
    :cond_5b4
    const/16 v35, 0x0

    goto :goto_56b

    .line 799
    .restart local v14       #exitedEcm:Z
    .restart local v35       #voicemailUriSpecified:Z
    :cond_5b7
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 803
    .end local v14           #exitedEcm:Z
    .end local v35           #voicemailUriSpecified:Z
    :pswitch_5bb
    const-string v2, "placeCall: specified number was an MMI code: "

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number= \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 814
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 817
    :pswitch_5e1
    const-string v2, "CallController"

    const-string v6, "placeCall: PhoneUtils.placeCall() FAILED for number: "

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 818
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-object v24, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_10c

    .line 715
    nop

    :pswitch_data_60c
    .packed-switch 0x0
        :pswitch_50e
        :pswitch_5bb
        :pswitch_5e1
    .end packed-switch
.end method


# virtual methods
.method public getBarringPopup()Z
    .registers 2

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    return v0
.end method

.method public getIntentOfOriginCall()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRtsValueForKor()[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 159
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 162
    :cond_34
    :goto_34
    return-void

    .line 146
    :pswitch_35
    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_34

    .line 151
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_34

    .line 143
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_35
    .end packed-switch
.end method

.method public initRtsValueForKor()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1096
    const-string v0, "ril.skt.network_regist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "place call : ril = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1098
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "Idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v5, :cond_91

    .line 1099
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    if-nez v1, :cond_38

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    .line 1100
    :cond_38
    const-string v1, ";"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v2, v0, v6

    const-string v3, "Status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1102
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v2, v0, v4

    const-string v3, "Idle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1103
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v2, v0, v7

    const-string v3, "CS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1104
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v0, v0, v8

    const-string v2, "PS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    .line 1105
    iget-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1109
    :goto_90
    return-void

    .line 1107
    :cond_91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    goto :goto_90
.end method

.method makeEmergencyCallWhileAirPlaneMode(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1161
    const-string v0, "CallController"

    const-string v1, "makeEmergencyCallWhileAirPlaneMode() "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1162
    if-nez p1, :cond_12

    .line 1163
    invoke-virtual {p0}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v0

    .line 1165
    :try_start_e
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_11
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_e .. :try_end_11} :catch_25

    move-result-object p1

    .line 1172
    :cond_12
    :goto_12
    monitor-enter p0

    .line 1173
    :try_start_13
    iget-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v0, :cond_1e

    .line 1174
    new-instance v0, Lcom/android/phone/EmergencyCallHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    iput-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 1176
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2c

    .line 1179
    iget-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v0, p1}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    .line 1180
    return-void

    .line 1166
    :catch_25
    move-exception v0

    .line 1167
    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 1176
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public placeCall(Landroid/content/Intent;)V
    .registers 14
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 201
    const-string v8, "placeCall()...  "

    invoke-static {v8, v10}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 203
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v8, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 209
    .local v1, inCallUiState:Lcom/android/phone/InCallUiState;
    if-nez p1, :cond_1c

    .line 210
    const-string v8, "CallController"

    const-string v9, "placeCall: called with null intent"

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 211
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "placeCall: called with null intent"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 214
    :cond_1c
    const-string v8, "intent = "

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extras = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 219
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_54

    .line 220
    const-string v8, "CallController"

    const-string v9, "placeCall: intent had no data"

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 221
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "placeCall: intent had no data"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 224
    :cond_54
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, scheme:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, number:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- scheme: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 235
    const-string v8, "android.intent.action.CALL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ff

    const-string v8, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ff

    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ff

    .line 238
    const-string v8, "CallController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "placeCall: unexpected intent action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 245
    :cond_ff
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 246
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    const-string v8, "feature_chn_duos"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a3

    .line 247
    const-string v8, "simnum"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_125

    .line 248
    const-string v8, "simnum"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 249
    .local v5, simNumber:I
    if-ne v5, v10, :cond_190

    .line 250
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    .line 262
    .end local v5           #simNumber:I
    :cond_125
    :goto_125
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_12e

    .line 263
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->checkForOtaspCall(Landroid/content/Intent;)V

    .line 274
    :cond_12e
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v11}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 279
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_1b5

    .line 280
    invoke-virtual {v1, p1}, Lcom/android/phone/InCallUiState;->setProviderInfo(Landroid/content/Intent;)V

    .line 285
    :goto_13c
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v6

    .line 286
    .local v6, status:Lcom/android/phone/Constants$CallStatusCode;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> placeCall(): status from placeCallInternal(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 288
    sget-object v8, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v6}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1e8

    .line 312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, v6}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 341
    :goto_17a
    iput-object p1, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    .line 342
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_1e2

    .line 343
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->displayVTCallScreen()V

    .line 346
    :goto_18f
    return-void

    .line 251
    .end local v6           #status:Lcom/android/phone/Constants$CallStatusCode;
    .restart local v5       #simNumber:I
    :cond_190
    const/4 v8, 0x2

    if-ne v5, v8, :cond_19a

    .line 252
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v3, v8, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    goto :goto_125

    .line 254
    :cond_19a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto :goto_125

    .line 258
    .end local v5           #simNumber:I
    :cond_1a3
    const-string v8, "ctc_dual_mode"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_125

    .line 259
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto/16 :goto_125

    .line 282
    :cond_1b5
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearProviderInfo()V

    goto :goto_13c

    .line 292
    .restart local v6       #status:Lcom/android/phone/Constants$CallStatusCode;
    :pswitch_1b9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 294
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v6, v8, :cond_1de

    .line 297
    sget-object v8, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v8}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 307
    :goto_1d8
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v10}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_17a

    .line 302
    :cond_1de
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    goto :goto_1d8

    .line 345
    :cond_1e2
    iget-object v8, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    goto :goto_18f

    .line 288
    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_1b9
        :pswitch_1b9
    .end packed-switch
.end method

.method public setBarringPopup(Z)V
    .registers 2
    .parameter "barringPopup"

    .prologue
    .line 1113
    iput-boolean p1, p0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 1114
    return-void
.end method

.method setCtcRoamingCallNum(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1117
    if-eqz p1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    move-object p2, v0

    .line 1152
    :cond_a
    :goto_a
    return-object p2

    .line 1121
    :cond_b
    const-string v1, "ctc_roamingcall"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1122
    const-string v2, "ctc_133callbackcall"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bRoamingcall= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bCallbackCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1124
    if-eqz v1, :cond_9c

    .line 1125
    sput-boolean v5, Lcom/android/phone/CallController;->isCtcRoamingCall:Z

    .line 1126
    sput-object p2, Lcom/android/phone/CallController;->mCtcRoamingCallNumber:Ljava/lang/String;

    .line 1127
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_63

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    .line 1129
    :cond_63
    const-string v0, "+86"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1131
    const-string v0, "86"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    .line 1134
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_a

    .line 1135
    :cond_9c
    if-eqz v2, :cond_fb

    .line 1136
    sput-boolean v5, Lcom/android/phone/CallController;->isCtcRoamingCall:Z

    .line 1137
    sput-object p2, Lcom/android/phone/CallController;->mCtcRoamingCallNumber:Ljava/lang/String;

    .line 1138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1139
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_d5

    .line 1140
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1145
    :cond_ba
    :goto_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**133*86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_a

    .line 1141
    :cond_d5
    const-string v0, "+86"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_e8

    .line 1142
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_ba

    .line 1143
    :cond_e8
    const-string v0, "86"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_ba

    .line 1144
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_ba

    .line 1148
    :cond_fb
    sput-boolean v6, Lcom/android/phone/CallController;->isCtcRoamingCall:Z

    .line 1149
    sput-object v0, Lcom/android/phone/CallController;->mCtcRoamingCallNumber:Ljava/lang/String;

    goto/16 :goto_a
.end method
