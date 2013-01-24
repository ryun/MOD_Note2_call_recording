.class public Lcom/android/phone/CallLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallLockSettings.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/phone/EditPinPreference;

.field private mRealPin:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_6
    sput-boolean v0, Lcom/android/phone/CallLockSettings;->DBG:Z

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 328
    new-instance v0, Lcom/android/phone/CallLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallLockSettings$2;-><init>(Lcom/android/phone/CallLockSettings;)V

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallLockSettings;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 344
    const-string v0, "CallLockSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .registers 4
    .parameter "pin"

    .prologue
    .line 314
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_13

    .line 315
    :cond_11
    const/4 v0, 0x0

    .line 317
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private resetDialogState()V
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 323
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->setDialogValues()V

    .line 326
    return-void
.end method

.method private setDialogValues()V
    .registers 8

    .prologue
    const v6, 0x7f0e048c

    const v5, 0x7f0e035f

    const v4, 0x7f0e035b

    const v3, 0x7f0e0359

    .line 178
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 179
    const-string v0, ""

    .line 180
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_90

    .line 199
    :goto_1a
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 203
    :cond_3a
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 204
    return-void

    .line 182
    :pswitch_40
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 187
    :pswitch_59
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 191
    :pswitch_6b
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 195
    :pswitch_7d
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 180
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_40
        :pswitch_59
        :pswitch_6b
        :pswitch_7d
    .end packed-switch
.end method

.method private showPinDialog()V
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    if-nez v0, :cond_5

    .line 175
    :goto_4
    return-void

    .line 172
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->setDialogValues()V

    .line 174
    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x65

    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 91
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/android/phone/CallLockSettings;->addPreferencesFromResource(I)V

    .line 93
    const-string v1, "call_lock_dialog"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    .line 94
    if-eqz p1, :cond_40

    const-string v1, "call_lock_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 95
    const-string v1, "call_lock_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 96
    const-string v1, "call_lock_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 97
    const-string v1, "call_lock_error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 99
    :cond_40
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 100
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 101
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, defaultPreferences:Landroid/content/SharedPreferences;
    const-string v1, "cb_passwd_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mRealPin:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    .line 112
    invoke-virtual {p0, v4}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 119
    return-void
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 142
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 143
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 150
    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/CallLockSettings$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/CallLockSettings$1;-><init>(Lcom/android/phone/CallLockSettings;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 159
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .registers 12
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v8, 0x7f0e048d

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 207
    if-nez p2, :cond_13

    .line 208
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->resetDialogState()V

    .line 209
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->finish()V

    .line 310
    :goto_12
    return-void

    .line 214
    :cond_13
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 215
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/CallLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 217
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0e048e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto :goto_12

    .line 221
    :cond_30
    iget v4, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_150

    goto :goto_12

    .line 223
    :pswitch_36
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRealPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 224
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/phone/CallLockSettings;->setResult(I)V

    .line 225
    const-string v4, ""

    invoke-virtual {p1, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    .line 231
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, answered:Z
    const/4 v3, 0x0

    .line 237
    .local v3, validState:Z
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 239
    .local v2, call:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_e9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 240
    sget-boolean v4, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v4, :cond_88

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accept state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    .line 242
    :cond_88
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 243
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 244
    .local v1, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_ee

    .line 245
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_ad

    .line 248
    const/4 v3, 0x1

    .line 260
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_ad
    :goto_ad
    if-eqz v3, :cond_fa

    .line 262
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/phone/PhoneUtils;->isFinishCdmaCallBarring:Z

    .line 264
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v5, "LockPatternClear"

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 265
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v4}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 267
    sget-boolean v4, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v4, :cond_df

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answerCall: call state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    .line 268
    :cond_df
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 269
    const/4 v0, 0x1

    .line 275
    :cond_e9
    :goto_e9
    invoke-virtual {p0}, Lcom/android/phone/CallLockSettings;->finish()V

    goto/16 :goto_12

    .line 250
    .restart local v1       #app:Lcom/android/phone/PhoneApp;
    :cond_ee
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_ad

    .line 253
    const/4 v3, 0x1

    goto :goto_ad

    .line 258
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_f8
    const/4 v3, 0x1

    goto :goto_ad

    .line 272
    :cond_fa
    sget-boolean v4, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v4, :cond_e9

    const-string v4, "answerCall: inconsistent states"

    invoke-static {v4}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    goto :goto_e9

    .line 278
    .end local v0           #answered:Z
    .end local v2           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #validState:Z
    :cond_104
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 279
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 280
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_12

    .line 285
    :pswitch_113
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mOldPin:Ljava/lang/String;

    .line 286
    iput v7, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 287
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 288
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_12

    .line 293
    :pswitch_122
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mNewPin:Ljava/lang/String;

    .line 294
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 295
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_12

    .line 300
    :pswitch_130
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14b

    .line 301
    iget-object v4, p0, Lcom/android/phone/CallLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    .line 302
    iput v7, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    .line 303
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mPin:Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    goto/16 :goto_12

    .line 306
    :cond_14b
    iput-object v6, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    goto/16 :goto_12

    .line 221
    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_36
        :pswitch_113
        :pswitch_122
        :pswitch_130
    .end packed-switch
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 124
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 126
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 128
    sget-boolean v1, Lcom/android/phone/CallLockSettings;->DBG:Z

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialogState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallLockSettings;->log(Ljava/lang/String;)V

    .line 129
    :cond_27
    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    if-eqz v1, :cond_2f

    .line 130
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->showPinDialog()V

    .line 134
    :goto_2e
    return-void

    .line 132
    :cond_2f
    invoke-direct {p0}, Lcom/android/phone/CallLockSettings;->resetDialogState()V

    goto :goto_2e
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 163
    const-string v0, "call_lock_state"

    iget v1, p0, Lcom/android/phone/CallLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v0, "call_lock_pin"

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "call_lock_error"

    iget-object v1, p0, Lcom/android/phone/CallLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method
