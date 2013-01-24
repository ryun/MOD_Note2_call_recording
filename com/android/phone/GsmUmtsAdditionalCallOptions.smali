.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"


# instance fields
.field private areaCodeText:Landroid/widget/EditText;

.field private mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

.field private mAutoRedial:Landroid/preference/CheckBoxPreference;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mInitIndex:I

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSubaddress:Landroid/preference/CheckBoxPreference;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallBarring:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 551
    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mRegReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateNoiseReduction()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/CallWaitingCheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    return-object v0
.end method

.method private checkAdditionalCallMenu()V
    .registers 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 330
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "remove_additional_call_setting_for_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 331
    const-string v1, "button_cw_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    const-string v1, "button_autoredial_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_1e
    const-string v1, "support_subaddress_settings"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 335
    const-string v1, "button_subaddress_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :cond_2f
    return-void
.end method

.method private checkCallBarringMenu()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 301
    :goto_e
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 302
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 303
    .local v2, phoneType:I
    if-eq v2, v5, :cond_28

    const-string v4, "hide_call_barring"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 304
    :cond_28
    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 305
    .local v0, barringButton:Landroid/preference/Preference;
    if-eqz v0, :cond_33

    .line 306
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    .end local v0           #barringButton:Landroid/preference/Preference;
    :cond_33
    if-eq v2, v5, :cond_61

    const-string v4, "hide_call_barring"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 318
    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 319
    .restart local v0       #barringButton:Landroid/preference/Preference;
    if-eqz v0, :cond_51

    .line 320
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    const/4 v0, 0x0

    .line 323
    :cond_51
    const-string v4, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    .line 325
    .end local v0           #barringButton:Landroid/preference/Preference;
    :cond_5b
    :goto_5b
    return-void

    .line 299
    .end local v2           #phoneType:I
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_5c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_e

    .line 312
    .restart local v2       #phoneType:I
    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_61
    const-string v4, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    .line 313
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5b

    .line 314
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    goto :goto_5b
.end method

.method private checkCallerIDMenu()V
    .registers 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 255
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "hide_caller_id"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 256
    const-string v2, "button_clir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 257
    .local v0, callerIDButton:Landroid/preference/Preference;
    if-eqz v0, :cond_17

    .line 258
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    .end local v0           #callerIDButton:Landroid/preference/Preference;
    :cond_17
    return-void
.end method

.method private checkFdnMenu()V
    .registers 7

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 270
    :goto_d
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 271
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_fdn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 272
    .local v0, fdnButton:Landroid/preference/Preference;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 273
    .local v2, phoneType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 274
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 275
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 277
    :cond_2f
    const/4 v4, 0x2

    if-eq v2, v4, :cond_42

    const-string v4, "hide_FDN"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 278
    :cond_42
    if-eqz v0, :cond_47

    .line 279
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_47
    :goto_47
    const-string v4, "feature_tmo"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 290
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    :cond_5a
    return-void

    .line 268
    .end local v0           #fdnButton:Landroid/preference/Preference;
    .end local v2           #phoneType:I
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_5b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_d

    .line 280
    .restart local v0       #fdnButton:Landroid/preference/Preference;
    .restart local v2       #phoneType:I
    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_60
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_83

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 284
    :cond_83
    if-eqz v0, :cond_47

    .line 285
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_47
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 567
    const-string v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 433
    .local v0, window:Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 434
    return-void
.end method

.method private setNoiseReduction(Z)V
    .registers 9
    .parameter "value"

    .prologue
    .line 236
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 237
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 238
    .local v1, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 240
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 241
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 242
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "noise_reduction_sharedpref"

    invoke-interface {v2, v5, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_2a

    .line 248
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, p1, v6}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 250
    :cond_2a
    return-void
.end method

.method private updateNoiseReduction()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 520
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 521
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 523
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_58

    .line 524
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 526
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "default_noise_reduction"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 528
    const/4 v3, 0x1

    .line 529
    .local v3, noiseReduction:Z
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_noise_reduction"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2b

    .line 530
    const/4 v3, 0x0

    .line 531
    :cond_2b
    const-string v5, "noise_reduction_sharedpref"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 541
    .end local v3           #noiseReduction:Z
    .local v2, isOn:Z
    :goto_31
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 543
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_52

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v5

    if-nez v5, :cond_52

    :cond_48
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 544
    :cond_52
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 549
    .end local v2           #isOn:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_58
    :goto_58
    return-void

    .line 537
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_59
    const-string v5, "noise_reduction_sharedpref"

    const-string v6, "default_noise_reduction"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2       #isOn:Z
    goto :goto_31

    .line 546
    :cond_66
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_58
.end method

.method private updateSummaryAutoAreaCode(ILjava/lang/String;)V
    .registers 10
    .parameter "value"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 220
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2e

    move v1, v4

    .line 222
    .local v1, hasData:Z
    :goto_b
    if-ne p1, v4, :cond_30

    if-eqz v1, :cond_30

    .line 223
    new-array v0, v4, [Ljava/lang/String;

    const-string v6, "%d"

    aput-object v6, v0, v5

    .line 224
    .local v0, SRC_TAGS:[Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v5

    .line 225
    .local v2, inputs:[Ljava/lang/String;
    const v4, 0x7f0e0311

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 229
    .local v3, summaryOn:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v4, v3}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    .end local v0           #SRC_TAGS:[Ljava/lang/String;
    .end local v2           #inputs:[Ljava/lang/String;
    .end local v3           #summaryOn:Ljava/lang/CharSequence;
    :cond_2d
    :goto_2d
    return-void

    .end local v1           #hasData:Z
    :cond_2e
    move v1, v5

    .line 220
    goto :goto_b

    .line 231
    .restart local v1       #hasData:Z
    :cond_30
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    const v5, 0x7f0e0312

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setSummary(I)V

    goto :goto_2d
.end method


# virtual methods
.method protected makeAreaCodeDialog()Landroid/app/Dialog;
    .registers 8

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 438
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f040064

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 439
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f0901b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    .line 440
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "area_code_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    if-eqz v4, :cond_3b

    .line 444
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 445
    .local v2, len:I
    if-lez v2, :cond_3b

    .line 446
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 450
    .end local v2           #len:I
    :cond_3b
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0310

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e002a

    new-instance v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;

    invoke-direct {v6, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e002e

    new-instance v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;

    invoke-direct {v6, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 476
    .local v0, areaCodeDialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->requestInputMethod(Landroid/app/Dialog;)V

    .line 477
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 118
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v3, 0x7f06001d

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 123
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_clir_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CLIRListPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 124
    const-string v3, "button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 125
    const-string v3, "button_areacode_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/SwitchDialogPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 126
    const-string v3, "button_autoredial_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v3, "button_noise_reduction_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v3, "button_subaddress_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    .line 129
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v3, "remove_additional_call_setting_for_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 131
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_62
    const-string v3, "hide_caller_id"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    const-string v3, "remove_additional_call_setting_for_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 138
    :cond_72
    iput-boolean v6, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 139
    if-nez p1, :cond_101

    .line 140
    const-string v3, "GsmUmtsAdditionalCallOptions"

    const-string v4, "start to init "

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 141
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, p0, v8}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 160
    :cond_82
    :goto_82
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallerIDMenu()V

    .line 161
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkFdnMenu()V

    .line 162
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallBarringMenu()V

    .line 163
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkAdditionalCallMenu()V

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 166
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_97

    .line 168
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 171
    :cond_97
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    new-instance v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;

    invoke-direct {v4, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    const-string v3, "cdma_additional_setting_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 195
    if-eqz v2, :cond_d7

    .line 196
    const-string v3, "button_clir_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 198
    const-string v3, "button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 200
    const-string v3, "button_areacode_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 202
    const-string v3, "button_autoredial_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 207
    :cond_d7
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_172

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 208
    const-string v3, "default_noise_reduction"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 209
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_noise_reduction"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 216
    :goto_100
    return-void

    .line 143
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_101
    const-string v3, "GsmUmtsAdditionalCallOptions"

    const-string v4, "restore stored states"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 144
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 145
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, p0, v6}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 146
    const-string v3, "remove_additional_call_setting_for_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_122

    .line 147
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v3, p0, v6}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 149
    :cond_122
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 150
    .local v1, clirArray:[I
    if-eqz v1, :cond_15b

    .line 151
    const-string v3, "GsmUmtsAdditionalCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate:  clirArray[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clirArray[1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto/16 :goto_82

    .line 155
    :cond_15b
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, p0, v8}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_82

    .line 211
    .end local v1           #clirArray:[I
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_162
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_100

    .line 213
    :cond_172
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_100
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 481
    packed-switch p1, :pswitch_data_e

    .line 485
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 483
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->makeAreaCodeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 481
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 6
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 398
    iget-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-nez v1, :cond_c

    .line 399
    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_b
    return-void

    .line 403
    :cond_c
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_38

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_38

    .line 404
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 405
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 406
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_38

    .line 418
    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 422
    :cond_38
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_b
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 377
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 378
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 379
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    :cond_16
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 491
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne p2, v3, :cond_f

    .line 492
    const-string v1, "onPreferenceTreeClick - mAutoAreaCodeButton"

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->showDialog(I)V

    .line 515
    :goto_e
    return v2

    .line 495
    :cond_f
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_30

    .line 497
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 498
    const/4 v0, 0x1

    .line 502
    .local v0, auto_redial:I
    :goto_1c
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_21

    move v1, v2

    :cond_21
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 503
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "autoredial_mode"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    .line 500
    .end local v0           #auto_redial:I
    :cond_2e
    const/4 v0, 0x0

    .restart local v0       #auto_redial:I
    goto :goto_1c

    .line 505
    .end local v0           #auto_redial:I
    :cond_30
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3e

    .line 506
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->setNoiseReduction(Z)V

    goto :goto_e

    .line 508
    :cond_3e
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_53

    .line 509
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 510
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "subaddress_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    :cond_53
    :goto_53
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_e

    .line 512
    :cond_58
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "subaddress_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_53
.end method

.method public onResume()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "area_code_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 345
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "area_code_value"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, data:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v3, :cond_22

    .line 348
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne v2, v4, :cond_7e

    move v3, v4

    :goto_1f
    invoke-virtual {v6, v3}, Lcom/android/phone/callsettings/SwitchDialogPreference;->setChecked(Z)V

    .line 350
    :cond_22
    const-string v3, "cdma_additional_setting_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 351
    invoke-direct {p0, v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(ILjava/lang/String;)V

    .line 353
    :cond_2d
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_43

    .line 354
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "autoredial_mode"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_80

    move v3, v4

    :goto_40
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    :cond_43
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_58

    .line 358
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "subaddress_mode"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_82

    :goto_55
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    :cond_58
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 362
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateNoiseReduction()V

    .line 372
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_7a
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 373
    return-void

    :cond_7e
    move v3, v5

    .line 348
    goto :goto_1f

    :cond_80
    move v3, v5

    .line 354
    goto :goto_40

    :cond_82
    move v4, v5

    .line 358
    goto :goto_55
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 389
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v0, :cond_1a

    .line 390
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_1a

    .line 391
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 394
    :cond_1a
    return-void
.end method
