.class public Lcom/android/phone/KTCallWaiting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTCallWaiting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTCallWaiting$MyHandler;
    }
.end annotation


# instance fields
.field private final Bearer_Service_Not_Provisoned:Ljava/lang/String;

.field private final Call_Barred:Ljava/lang/String;

.field private final Data_Missing:Ljava/lang/String;

.field private final Illegal_SS_Operation:Ljava/lang/String;

.field private final Negative_PW_Check:Ljava/lang/String;

.field private final Number_Of_PW_Attempts_Violation:Ljava/lang/String;

.field private final Pw_Registration_Failure:Ljava/lang/String;

.field private final SS_Error_Status:Ljava/lang/String;

.field private final SS_Incompatibility:Ljava/lang/String;

.field private final SS_Not_Available:Ljava/lang/String;

.field private final SS_Subscription_Violation:Ljava/lang/String;

.field private final System_Failure:Ljava/lang/String;

.field private final Teleservice_Not_Provisoned:Ljava/lang/String;

.field private final Unexpected_Data_Value:Ljava/lang/String;

.field private final Unknown_Subscriber:Ljava/lang/String;

.field private mChecked:Z

.field private mCheckedProgressDialog:Z

.field private mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingInfo:Landroid/preference/PreferenceScreen;

.field private mSettingOff:Landroid/preference/PreferenceScreen;

.field private mSettingOn:Landroid/preference/PreferenceScreen;

.field private mSettingStatus:Landroid/preference/PreferenceScreen;

.field private mtimer:Ljava/util/Timer;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/KTCallWaiting$MyHandler;-><init>(Lcom/android/phone/KTCallWaiting;Lcom/android/phone/KTCallWaiting$1;)V

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    .line 65
    iput-object v1, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 70
    iput-object v1, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 72
    const-string v0, "25"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Pw_Registration_Failure:Ljava/lang/String;

    .line 73
    const-string v0, "26"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Negative_PW_Check:Ljava/lang/String;

    .line 74
    const-string v0, "2B"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Number_Of_PW_Attempts_Violation:Ljava/lang/String;

    .line 75
    const-string v0, "01"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Unknown_Subscriber:Ljava/lang/String;

    .line 76
    const-string v0, "0A"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Bearer_Service_Not_Provisoned:Ljava/lang/String;

    .line 77
    const-string v0, "0B"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Teleservice_Not_Provisoned:Ljava/lang/String;

    .line 78
    const-string v0, "0D"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Call_Barred:Ljava/lang/String;

    .line 79
    const-string v0, "10"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Illegal_SS_Operation:Ljava/lang/String;

    .line 80
    const-string v0, "11"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Error_Status:Ljava/lang/String;

    .line 81
    const-string v0, "12"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Not_Available:Ljava/lang/String;

    .line 82
    const-string v0, "13"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Subscription_Violation:Ljava/lang/String;

    .line 83
    const-string v0, "14"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->SS_Incompatibility:Ljava/lang/String;

    .line 84
    const-string v0, "22"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->System_Failure:Ljava/lang/String;

    .line 85
    const-string v0, "23"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Data_Missing:Ljava/lang/String;

    .line 86
    const-string v0, "24"

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->Unexpected_Data_Value:Ljava/lang/String;

    .line 392
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/KTCallWaiting;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/KTCallWaiting;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/KTCallWaiting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    return p1
.end method

.method private destoryProgressDialogFromNoResponse()V
    .registers 7

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 211
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    if-nez v2, :cond_23

    .line 212
    const v2, 0x7f0e062b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 213
    .local v0, NoResponse:Landroid/widget/Toast;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 214
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    new-instance v3, Lcom/android/phone/KTCallWaiting$2;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/KTCallWaiting$2;-><init>(Lcom/android/phone/KTCallWaiting;Landroid/widget/Toast;)V

    const-wide/16 v4, 0x1b58

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 228
    .end local v0           #NoResponse:Landroid/widget/Toast;
    :cond_23
    return-void
.end method


# virtual methods
.method handleGetCallWaitingResult(I)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 232
    .local v0, context:Landroid/content/Context;
    iget-boolean v2, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v2, :cond_a

    .line 254
    :goto_9
    return-void

    .line 235
    :cond_a
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    .line 237
    .local v1, progress:Landroid/app/ProgressDialog;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 238
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 239
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 240
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 241
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 244
    :cond_27
    packed-switch p1, :pswitch_data_42

    goto :goto_9

    .line 246
    :pswitch_2b
    const v2, 0x7f0e0620

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 249
    :pswitch_36
    const v2, 0x7f0e061f

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 244
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_36
    .end packed-switch
.end method

.method handleSetCallWaitingResult(I)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, context:Landroid/content/Context;
    iget-boolean v2, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v2, :cond_a

    .line 279
    :goto_9
    return-void

    .line 261
    :cond_a
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    .line 263
    .local v1, progress:Landroid/app/ProgressDialog;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 264
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 265
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 266
    iget-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 267
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 270
    :cond_27
    if-lez p1, :cond_45

    .line 271
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 272
    const v2, 0x7f0e061d

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 274
    :cond_3a
    const v2, 0x7f0e061e

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 277
    :cond_45
    const v2, 0x7f0e062b

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_9
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 437
    const-string v0, "KTCallWaiting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 439
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->addPreferencesFromResource(I)V

    .line 126
    const-string v0, "setting_on_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingOn:Landroid/preference/PreferenceScreen;

    .line 127
    const-string v0, "setting_off_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingOff:Landroid/preference/PreferenceScreen;

    .line 128
    const-string v0, "setting_status__preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingStatus:Landroid/preference/PreferenceScreen;

    .line 129
    const-string v0, "setting_info_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallWaiting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mSettingInfo:Landroid/preference/PreferenceScreen;

    .line 132
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/KTCallWaiting;->mtimer:Ljava/util/Timer;

    .line 136
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0e061c

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 143
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingOn:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 144
    iget-boolean v4, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v4, :cond_3c

    .line 145
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    .line 146
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v6}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v7, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    .line 148
    iget-object v4, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v6, v3}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 150
    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    .line 151
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    .line 192
    :cond_3c
    :goto_3c
    return v3

    .line 155
    :cond_3d
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingOff:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 156
    iget-boolean v5, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v5, :cond_3c

    .line 157
    iput-boolean v4, p0, Lcom/android/phone/KTCallWaiting;->mChecked:Z

    .line 158
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v6}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v7, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    .line 160
    iget-object v4, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v6, v3}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 162
    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    .line 163
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    goto :goto_3c

    .line 167
    :cond_6f
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 168
    iget-boolean v5, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v5, :cond_3c

    .line 169
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v6}, Lcom/android/phone/KTCallWaiting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/phone/KTCallWaiting;->mProgress:Ljava/lang/ref/WeakReference;

    .line 171
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/KTCallWaiting;->mHandler:Lcom/android/phone/KTCallWaiting$MyHandler;

    invoke-virtual {v6, v4}, Lcom/android/phone/KTCallWaiting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 172
    invoke-direct {p0}, Lcom/android/phone/KTCallWaiting;->destoryProgressDialogFromNoResponse()V

    .line 173
    iput-boolean v3, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    goto :goto_3c

    .line 177
    :cond_9b
    iget-object v5, p0, Lcom/android/phone/KTCallWaiting;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 178
    iget-boolean v4, p0, Lcom/android/phone/KTCallWaiting;->mCheckedProgressDialog:Z

    if-nez v4, :cond_3c

    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e061a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 181
    const v4, 0x7f0e061b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 182
    const v4, 0x7f0e002a

    new-instance v5, Lcom/android/phone/KTCallWaiting$1;

    invoke-direct {v5, p0}, Lcom/android/phone/KTCallWaiting$1;-><init>(Lcom/android/phone/KTCallWaiting;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3c

    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :cond_c8
    move v3, v4

    .line 192
    goto/16 :goto_3c
.end method

.method showReturnError(Ljava/lang/Throwable;)V
    .registers 13
    .parameter "exception"

    .prologue
    const v10, 0x7f0e0636

    const v9, 0x7f0e0624

    const v8, 0x7f0e0621

    const/4 v7, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/android/phone/KTCallWaiting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 283
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 284
    .local v2, errorcode:Ljava/lang/String;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 286
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_25

    .line 287
    const-string v4, "ril.ss.errorcode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    if-nez v2, :cond_26

    .line 390
    :cond_25
    :goto_25
    return-void

    .line 296
    :cond_26
    const/4 v3, 0x0

    .line 298
    .local v3, errorvalue:I
    const-string v4, "SOO_Test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v4, "37"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 301
    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_25

    .line 303
    :cond_59
    const-string v4, "38"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 304
    invoke-static {v0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_25

    .line 306
    :cond_69
    const-string v4, "43"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 307
    const v4, 0x7f0e0622

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_25

    .line 309
    :cond_7c
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 310
    const v4, 0x7f0e0623

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_25

    .line 312
    :cond_8f
    const-string v4, "10"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 313
    invoke-static {v0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_25

    .line 315
    :cond_9f
    const-string v4, "11"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 316
    invoke-static {v0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 318
    :cond_b0
    const-string v4, "13"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 319
    const v4, 0x7f0e0625

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 321
    :cond_c4
    const-string v4, "16"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 322
    const v4, 0x7f0e0626

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 324
    :cond_d8
    const-string v4, "17"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 325
    const v4, 0x7f0e0627

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 327
    :cond_ec
    const-string v4, "18"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 328
    const v4, 0x7f0e0628

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 330
    :cond_100
    const-string v4, "19"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 331
    const v4, 0x7f0e0629

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 333
    :cond_114
    const-string v4, "20"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 334
    const v4, 0x7f0e062a

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 336
    :cond_128
    const-string v4, "34"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 337
    const v4, 0x7f0e062b

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 339
    :cond_13c
    const-string v4, "35"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    .line 340
    const v4, 0x7f0e062c

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 342
    :cond_150
    const-string v4, "36"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_164

    .line 343
    const v4, 0x7f0e062d

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 345
    :cond_164
    const-string v4, "121"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_178

    .line 346
    const v4, 0x7f0e062e

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 348
    :cond_178
    const-string v4, "122"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18c

    .line 349
    const v4, 0x7f0e062f

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 351
    :cond_18c
    const-string v4, "71"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 352
    const v4, 0x7f0e0630

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 354
    :cond_1a0
    const-string v4, "72"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b4

    .line 355
    const v4, 0x7f0e0631

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 357
    :cond_1b4
    const-string v4, "54"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 358
    const v4, 0x7f0e0632

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 360
    :cond_1c8
    const-string v4, "9"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1dc

    .line 361
    const v4, 0x7f0e0633

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 363
    :cond_1dc
    const-string v4, "21"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    .line 364
    const v4, 0x7f0e0634

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 366
    :cond_1f0
    const-string v4, "27"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_204

    .line 367
    const v4, 0x7f0e0635

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 369
    :cond_204
    const-string v4, "29"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    .line 370
    invoke-static {v0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 372
    :cond_215
    const-string v4, "30"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_226

    .line 373
    invoke-static {v0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 375
    :cond_226
    const-string v4, "123"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23a

    .line 376
    const v4, 0x7f0e0637

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 378
    :cond_23a
    const-string v4, "124"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24e

    .line 379
    const v4, 0x7f0e0638

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 381
    :cond_24e
    const-string v4, "125"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_262

    .line 382
    const v4, 0x7f0e0639

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 384
    :cond_262
    const-string v4, "126"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_276

    .line 385
    const v4, 0x7f0e063a

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25

    .line 387
    :cond_276
    const-string v4, "127"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 388
    const v4, 0x7f0e063b

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_25
.end method
