.class public Lcom/android/phone/InCallScreenShowActivation;
.super Landroid/app/Activity;
.source "InCallScreenShowActivation.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 45
    sget v2, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v2, v0, :cond_11

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_e
    sput-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    return-void

    :cond_11
    move v0, v1

    goto :goto_e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 53
    .local v3, intent:Landroid/content/Intent;
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_25

    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_25
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 55
    .local v2, extras:Landroid/os/Bundle;
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_63

    if-eqz v2, :cond_63

    .line 56
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      - has extras: size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      - extras = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_63
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 61
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 62
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 63
    const-string v6, "InCallScreenShowActivation"

    const-string v7, "CDMA Provisioning not supported on this device"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    .line 138
    :goto_7e
    return-void

    .line 69
    :cond_7f
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b

    .line 73
    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 74
    .local v4, interactiveMode:Z
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_PERFORM_CDMA_PROVISIONING (interactiveMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v6, "ota_override_interactive_mode"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d9

    const-string v6, "ro.debuggable"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_d9

    .line 83
    const-string v6, "ota_override_interactive_mode"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 85
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===> MANUALLY OVERRIDING interactiveMode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_d9
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    const-string v6, "otasp_result_code_pending_intent"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    iput-object v6, v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    .line 99
    if-eqz v4, :cond_fc

    .line 105
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_f2

    const-string v6, "InCallScreenShowActivation"

    const-string v7, "==> Starting interactive CDMA provisioning..."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_f2
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 137
    .end local v4           #interactiveMode:Z
    :goto_f8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto :goto_7e

    .line 120
    .restart local v4       #interactiveMode:Z
    :cond_fc
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_107

    const-string v6, "InCallScreenShowActivation"

    const-string v7, "==> Starting non-interactive CDMA provisioning..."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_107
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startNonInteractiveOtasp(Landroid/content/Context;)I

    move-result v1

    .line 123
    .local v1, callStatus:I
    if-nez v1, :cond_12e

    .line 124
    sget-boolean v6, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v6, :cond_129

    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> successful result from startNonInteractiveOtasp(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_129
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_f8

    .line 128
    :cond_12e
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure code from startNonInteractiveOtasp(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_f8

    .line 133
    .end local v1           #callStatus:I
    .end local v4           #interactiveMode:Z
    :cond_14b
    const-string v6, "InCallScreenShowActivation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected intent action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_f8
.end method
