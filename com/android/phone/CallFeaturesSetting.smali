.class public Lcom/android/phone/CallFeaturesSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private FAIL_OPTION:[I

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

.field private mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutomaticaccept:Landroid/preference/CheckBoxPreference;

.field private mBoolCheckBroadcast:Z

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonCallTypeSelect:Landroid/preference/PreferenceScreen;

.field private mButtonDDTM:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallFailOption:Landroid/preference/CheckBoxPreference;

.field private mCallForwarding:Landroid/preference/PreferenceScreen;

.field mCallHandler:Landroid/os/Handler;

.field private mCallTypePreference:Landroid/preference/ListPreference;

.field private mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCountryCodePref:Landroid/preference/EditTextPreference;

.field private mCountryPref:Landroid/preference/CheckBoxPreference;

.field private mCurrentDialogId:I

.field private mCurrentyCountry:Landroid/preference/PreferenceScreen;

.field private mDDTMHandler:Landroid/os/Handler;

.field private mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

.field private mEntrySettings:Landroid/preference/PreferenceScreen;

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

.field private mExtraVolPreference:Landroid/preference/CheckBoxPreference;

.field private mFailoption_cmcc:Landroid/preference/PreferenceScreen;

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mHeaderSettings:Landroid/preference/PreferenceScreen;

.field private mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

.field private mListIndex:I

.field private mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mProximitySensor:Landroid/preference/CheckBoxPreference;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mShowMeForVideo:Landroid/preference/CheckBoxPreference;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

.field private mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

.field private mVideocallMode:Landroid/preference/CheckBoxPreference;

.field private mVideocallPreference:Landroid/preference/CheckBoxPreference;

.field private mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

.field private mVisualVoiceMailSettings:Landroid/preference/PreferenceScreen;

.field private mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field protected mVoicemailSettings:Landroid/preference/PreferenceScreen;

.field private proximityChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 437
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 346
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->FAIL_OPTION:[I

    .line 392
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mBoolCheckBroadcast:Z

    .line 400
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallHandler:Landroid/os/Handler;

    .line 402
    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    .line 418
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContentObserver:Landroid/database/ContentObserver;

    .line 523
    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 529
    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 536
    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 541
    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 546
    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 551
    iput v2, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 557
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 563
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 569
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 575
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 581
    iput v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    .line 624
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1308
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1477
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1541
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$7;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$7;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 2666
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$10;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$10;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    .line 2709
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 2718
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$11;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$11;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 2748
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$12;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$12;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3477
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$14;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$14;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 346
    nop

    :array_7c
    .array-data 0x4
        0xb7t 0x4t 0xet 0x7ft
        0xb8t 0x4t 0xet 0x7ft
        0xb9t 0x4t 0xet 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateProximitySensorPreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updatePowerkeyPreference()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/CallFeaturesSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .registers 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/CallFeaturesSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mListIndex:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/CallFeaturesSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mListIndex:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateFailOptionCmccSummary()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getDDTMData()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/CallFeaturesSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallForwarding:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method private checkAutoCurrentCountryName()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 3507
    const-string v0, "content://assisteddialing/ota_country"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3508
    const-string v6, "assisted_dialing_current_country_network_error"

    .line 3510
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3511
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 3512
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3514
    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3515
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3516
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3518
    :goto_27
    return-object v0

    :cond_28
    move-object v0, v6

    goto :goto_27
.end method

.method private checkForwardingCompleted()Z
    .registers 5

    .prologue
    .line 1579
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_6

    .line 1580
    const/4 v2, 0x1

    .line 1592
    .local v2, result:Z
    :cond_5
    :goto_5
    return v2

    .line 1584
    .end local v2           #result:Z
    :cond_6
    const/4 v2, 0x1

    .line 1585
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1586
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1587
    const/4 v2, 0x0

    .line 1588
    goto :goto_5
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1598
    const/4 v3, 0x0

    .line 1599
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1601
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1602
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1603
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1604
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_b

    .line 1605
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1606
    if-nez v3, :cond_29

    .line 1607
    const-string v3, ""

    .line 1612
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_29
    return-object v3
.end method

.method private checkIsVoiceMailNumberDefault()Z
    .registers 5

    .prologue
    .line 1698
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1699
    .local v0, mVoiceMailNumberSp:Landroid/content/SharedPreferences;
    const-string v2, "vm_number_key_cdma"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, voicemail:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 1620
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 1622
    const-string v0, ""

    .line 1626
    .end local v0           #msg:Ljava/lang/String;
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private connectToRilService()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2712
    const-string v0, "CallFeaturesSetting"

    const-string v1, "connect To Secphone service"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2713
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2714
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2715
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2716
    return-void
.end method

.method private createSipCallSettings()V
    .registers 4

    .prologue
    .line 2043
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2044
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 2045
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 2046
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 2047
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 2048
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2049
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2052
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2054
    :cond_48
    return-void
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting settings for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2582
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_1b

    .line 2589
    :goto_1a
    return-void

    .line 2585
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1a
.end method

.method private dismissDialogSafely(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1254
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1260
    :goto_3
    return-void

    .line 1255
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2592
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2593
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0           #key:Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method private getDDTMData()V
    .registers 9

    .prologue
    const/16 v7, 0x16

    const/4 v1, 0x1

    .line 2610
    const/4 v0, 0x0

    .line 2611
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2612
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2614
    const/4 v4, 0x4

    .line 2615
    const/16 v5, 0x51

    :try_start_11
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2616
    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2617
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_31

    .line 2623
    :goto_1c
    if-nez v0, :cond_2b

    .line 2624
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2627
    :cond_2b
    if-eqz v3, :cond_30

    .line 2629
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4c

    .line 2634
    :cond_30
    :goto_30
    return-void

    .line 2618
    :catch_31
    move-exception v0

    .line 2620
    const-string v4, "CallFeaturesSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDDTMData exception occured during operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    move v0, v1

    goto :goto_1c

    .line 2630
    :catch_4c
    move-exception v0

    .line 2631
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .registers 5

    .prologue
    .line 2059
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 2061
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 2063
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 2065
    .local v0, sipSettings:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2066
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2070
    .end local v2           #wifiOnly:Landroid/preference/ListPreference;
    :goto_25
    return-object v2

    .line 2069
    .restart local v2       #wifiOnly:Landroid/preference/ListPreference;
    :cond_26
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v2, v1

    .line 2070
    goto :goto_25
.end method

.method public static getVibrateWhenRinging(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2250
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2251
    .local v0, vibrator:Landroid/os/Vibrator;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2254
    :cond_11
    :goto_11
    return v1

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    goto :goto_11
.end method

.method public static getVoiceCallTypeValue(Landroid/content/ContentResolver;)I
    .registers 5
    .parameter

    .prologue
    .line 3546
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3548
    :try_start_8
    const-string v0, "voicecall_type"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v0

    .line 3554
    :goto_e
    return v0

    .line 3549
    :catch_f
    move-exception v0

    .line 3550
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read the voice call type settings, exceptions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    :cond_28
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 2601
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2602
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2603
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2604
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2605
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2606
    return-void
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x25a

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1321
    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleForwardingSettingsReadResult: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_169

    .line 1324
    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FwdRead: ar.exception="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1328
    :goto_41
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_6b

    .line 1329
    const-string v2, "CallFeaturesSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FwdRead: userObj="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 1335
    :cond_6b
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v2, :cond_88

    .line 1336
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring fwd reading result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :goto_87
    return-void

    .line 1341
    :cond_88
    if-eqz v0, :cond_ad

    .line 1342
    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error discovered for fwd read : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1344
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1345
    const/16 v0, 0x192

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_87

    .line 1350
    :cond_ad
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move v2, v3

    .line 1352
    :goto_b4
    array-length v5, v0

    if-ge v2, v5, :cond_166

    .line 1353
    aget-object v5, v0, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_120

    .line 1354
    aget-object v0, v0, v2

    .line 1358
    :goto_c1
    if-nez v0, :cond_123

    .line 1362
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating default info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1364
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1365
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v1, v1, p2

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1366
    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1375
    :goto_ea
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v1, p2

    move v0, v3

    .line 1379
    :goto_ef
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_164

    .line 1380
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_158

    move v0, v3

    .line 1385
    :goto_fb
    if-eqz v0, :cond_15b

    .line 1386
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Done receiving fwd info"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1388
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v0, :cond_11b

    .line 1389
    const-string v0, ""

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1392
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1394
    :cond_11b
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_87

    .line 1352
    :cond_120
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 1369
    :cond_123
    iget-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v1, :cond_12f

    iget-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_131

    .line 1370
    :cond_12f
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1373
    :cond_131
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    .line 1379
    :cond_158
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    .line 1396
    :cond_15b
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Not done receiving fwd info"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    :cond_164
    move v0, v4

    goto :goto_fb

    :cond_166
    move-object v0, v1

    goto/16 :goto_c1

    :cond_169
    move-object v0, v1

    goto/16 :goto_41
.end method

.method private handleSetVMOrFwdMessage()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1631
    const-string v0, "handleSetVMMessage: set VM request complete"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1635
    const-string v0, ""

    .line 1636
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v2, :cond_6a

    .line 1637
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1638
    if-eqz v0, :cond_6a

    move v3, v4

    move v2, v1

    .line 1643
    :goto_15
    if-eqz v2, :cond_68

    .line 1644
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1645
    if-eqz v0, :cond_68

    .line 1649
    :goto_1d
    if-eqz v1, :cond_2a

    .line 1650
    const-string v0, "change VM success!"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1651
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1661
    :goto_29
    return-void

    .line 1653
    :cond_2a
    if-eqz v3, :cond_4a

    .line 1654
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change fowarding setting. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1655
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_29

    .line 1657
    :cond_4a
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change voicemail. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1658
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_29

    :cond_68
    move v1, v2

    goto :goto_1d

    :cond_6a
    move v3, v1

    move v2, v4

    goto :goto_15
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .registers 5
    .parameter "objValue"

    .prologue
    .line 2294
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2295
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 2296
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2298
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2299
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2265
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2266
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2272
    if-eq v0, v2, :cond_54

    .line 2273
    packed-switch v0, :pswitch_data_60

    move v0, v1

    .line 2285
    :goto_35
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2286
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2287
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2288
    const-string v2, "ttyPreferredMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2289
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2291
    :cond_54
    return-void

    .line 2278
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_35

    .line 2273
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .registers 4
    .parameter

    .prologue
    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVMAndFwdSetSuccess(). current voicemail provider key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1691
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1693
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1694
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1695
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .registers 5

    .prologue
    .line 1215
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1219
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .registers 4
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1671
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_d

    .line 1672
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1673
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1674
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1680
    :goto_c
    return-void

    .line 1677
    :cond_d
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1678
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1679
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    goto :goto_c
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 9
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 1401
    const/4 v4, 0x0

    .line 1402
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_f

    .line 1403
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 1404
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_10

    .line 1405
    move-object v4, v2

    .line 1410
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_f
    return-object v4

    .line 1403
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private initVoiceMailProviders()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2375
    const-string v0, "initVoiceMailProviders()"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vm_numbers"

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 2381
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 2382
    const-string v0, "ACTION_ADD_VOICEMAIL"

    invoke-static {v0, v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    .line 2383
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 2384
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2386
    :goto_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found ACTION_ADD_VOICEMAIL. providerToIgnore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2387
    if-eqz v0, :cond_5d

    .line 2389
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_5d
    move-object v2, v0

    .line 2393
    :goto_5e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2397
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 2399
    if-eqz v0, :cond_d9

    const v3, 0x1040004

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 2400
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2404
    :goto_7f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v5, ""

    new-instance v7, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v7, p0, v3, v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2408
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2409
    const-string v1, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2410
    invoke-virtual {v7, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 2411
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    move v5, v0

    .line 2415
    :goto_a5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_146

    .line 2416
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2417
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2418
    invoke-direct {p0, v9}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v10

    .line 2419
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e2

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring key: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2421
    add-int/lit8 v5, v5, -0x1

    .line 2415
    :goto_d5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a5

    .line 2402
    :cond_d9
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_7f

    .line 2424
    :cond_e2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loading key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2426
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2427
    const-string v12, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2428
    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2431
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Store loaded VoiceMailProvider. key: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " -> name: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", intent: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2434
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v12, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v12, p0, v0, v11}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 2442
    :cond_146
    new-array v2, v5, [Ljava/lang/String;

    .line 2443
    new-array v5, v5, [Ljava/lang/String;

    .line 2444
    aput-object v3, v2, v4

    .line 2445
    const-string v0, ""

    aput-object v0, v5, v4

    move v1, v6

    .line 2447
    :goto_151
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_181

    .line 2448
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2449
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_170

    move v0, v1

    .line 2447
    :goto_16c
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_151

    .line 2452
    :cond_170
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 2453
    aput-object v3, v5, v1

    .line 2454
    add-int/lit8 v0, v1, 0x1

    goto :goto_16c

    .line 2458
    :cond_181
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2459
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2464
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set up the first mPreviousVMProviderKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2468
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 2469
    return-void

    :cond_1af
    move-object v0, v1

    goto/16 :goto_42

    :cond_1b2
    move-object v2, v1

    goto/16 :goto_5e
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 7
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2733
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2734
    .local v0, req:Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2736
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2737
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2740
    :try_start_10
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_1a

    .line 2741
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2746
    :goto_19
    return-void

    .line 2743
    :cond_1a
    const-string v1, "CallFeaturesSetting"

    const-string v2, "mServiceMessenger is null. Do nothing."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_23

    goto :goto_19

    .line 2744
    :catch_23
    move-exception v1

    goto :goto_19
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2259
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isCSCall(I)Z
    .registers 3
    .parameter "callType"

    .prologue
    const/4 v0, 0x0

    .line 3566
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3567
    const/4 v1, 0x2

    if-ne p0, v1, :cond_d

    const/4 v0, 0x1

    .line 3569
    :cond_d
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .registers 5
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 1415
    const/4 v0, 0x1

    .line 1416
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1419
    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1420
    const/4 v0, 0x0

    .line 1423
    :cond_c
    return v0
.end method

.method public static isVoLTECall(I)Z
    .registers 3
    .parameter "callType"

    .prologue
    const/4 v0, 0x0

    .line 3558
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3559
    if-nez p0, :cond_c

    const/4 v0, 0x1

    .line 3561
    :cond_c
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2543
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2545
    if-nez v3, :cond_3a

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2574
    :goto_39
    return-object v0

    .line 2550
    :cond_3a
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2552
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2553
    if-lez v2, :cond_11b

    .line 2554
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 2555
    :goto_6d
    array-length v5, v2

    if-ge v0, v5, :cond_11a

    .line 2556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2557
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 2558
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2560
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Reason"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2563
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2564
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2565
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Number"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2567
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#Time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x14

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2555
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6d

    :cond_11a
    move-object v0, v2

    .line 2572
    :cond_11b
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded settings for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 2574
    goto/16 :goto_39
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 2317
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 2321
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2322
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ai"

    .prologue
    .line 2472
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2502
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_6

    .line 2532
    :goto_5
    return-void

    .line 2505
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 2506
    if-eqz v1, :cond_2f

    invoke-virtual {p2, v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeSaveSettingsForVoicemailProvider: Not saving setting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " since they have not changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 2513
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving settings for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2514
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2517
    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2518
    sget-object v4, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_125

    .line 2519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2520
    :goto_a1
    array-length v4, v3

    if-ge v0, v4, :cond_13b

    .line 2521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2522
    aget-object v5, v3, v0

    .line 2523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2520
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a1

    .line 2529
    :cond_125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2531
    :cond_13b
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5
.end method

.method private onProximitySensorPreferenceTreeClick()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 805
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_82

    .line 814
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 817
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6f

    .line 820
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    .line 821
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 823
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 824
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002a

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v2, p0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002e

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v2, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 870
    :goto_6e
    return-void

    .line 859
    :cond_6f
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 861
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    .line 862
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6e

    .line 865
    :cond_82
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 867
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    .line 868
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6e
.end method

.method private onRevertDone()V
    .registers 3

    .prologue
    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flipping provider key back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1098
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_33

    .line 1099
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1102
    :cond_33
    return-void
.end method

.method private resetForwardingChangeState()V
    .registers 2

    .prologue
    .line 1427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1428
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1429
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1265
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1267
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 1268
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1271
    :cond_27
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFwdNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    :goto_3d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " settings"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_64

    .line 1278
    const-string v0, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1279
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1283
    :cond_64
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v0, v2, :cond_7c

    .line 1284
    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1306
    :goto_79
    return-void

    :cond_7a
    move v0, v1

    .line 1272
    goto :goto_3d

    .line 1288
    :cond_7c
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1289
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 1290
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1291
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1292
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 1293
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1295
    const-string v0, "Reading current forwarding settings"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1296
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 1297
    :goto_a4
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_c2

    .line 1298
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1299
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 1302
    :cond_c2
    const/16 v0, 0x25a

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_79

    .line 1304
    :cond_c8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_79
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1434
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1435
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1436
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_7f

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_7f

    .line 1437
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    move v6, v7

    .line 1438
    :goto_14
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v6, v0, :cond_79

    .line 1439
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v0, v6

    .line 1441
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v0

    .line 1444
    if-eqz v0, :cond_73

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1448
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_77

    const/4 v1, 0x3

    :goto_60
    iget v2, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v9, 0x1f5

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v8, v9, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1438
    :cond_73
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_14

    :cond_77
    move v1, v7

    .line 1448
    goto :goto_60

    .line 1459
    :cond_79
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1464
    :goto_7e
    return-void

    .line 1461
    :cond_7f
    const-string v0, "Not touching fwd #"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_7e
.end method

.method private setDDTMData(B)V
    .registers 12
    .parameter "value"

    .prologue
    const/16 v9, 0x17

    const/4 v5, 0x1

    .line 2637
    const/4 v4, 0x0

    .line 2638
    .local v4, hasException:Z
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2639
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2641
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 2642
    .local v3, fileSize:I
    const/16 v6, 0x51

    :try_start_11
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2643
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2644
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2645
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_3e

    .line 2651
    :goto_1f
    if-nez v4, :cond_38

    .line 2652
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDDTMHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallFeaturesSetting;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2653
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_59

    :goto_32
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2654
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getDDTMData()V

    .line 2657
    :cond_38
    if-eqz v1, :cond_3d

    .line 2659
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_5b

    .line 2664
    :cond_3d
    :goto_3d
    return-void

    .line 2646
    :catch_3e
    move-exception v2

    .line 2647
    .local v2, e:Ljava/io/IOException;
    const/4 v4, 0x1

    .line 2648
    const-string v6, "CallFeaturesSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDDTMData exception occured during operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1f

    .line 2653
    .end local v2           #e:Ljava/io/IOException;
    :cond_59
    const/4 v5, 0x0

    goto :goto_32

    .line 2660
    :catch_5b
    move-exception v2

    .line 2661
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d
.end method

.method private setVMNumberWithCarrier()V
    .registers 6

    .prologue
    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1472
    return-void
.end method

.method private showDialogIfForeground(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_7

    .line 1248
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    .line 1250
    :cond_7
    return-void
.end method

.method private showVMDialog(I)V
    .registers 3
    .parameter "msgStatus"

    .prologue
    .line 1882
    sparse-switch p1, :sswitch_data_22

    .line 1904
    :goto_3
    return-void

    .line 1886
    :sswitch_4
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1889
    :sswitch_a
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1892
    :sswitch_10
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1895
    :sswitch_16
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1898
    :sswitch_1c
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1882
    :sswitch_data_22
    .sparse-switch
        0x190 -> :sswitch_4
        0x191 -> :sswitch_a
        0x192 -> :sswitch_10
        0x258 -> :sswitch_1c
        0x2bc -> :sswitch_16
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .registers 9
    .parameter "preference"

    .prologue
    .line 2484
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2485
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_9
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_25

    .line 2486
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_26

    .line 2487
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2492
    :cond_25
    return-void

    .line 2485
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private switchToPreviousVoicemailProvider()V
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_163

    .line 1027
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_15b

    .line 1030
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Needs to rollback. mVMChangeCompletedSuccessfully="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFwdChangesRequireRollback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1035
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1038
    if-nez v0, :cond_9c

    .line 1040
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" becomes null, which is unexpected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVMChangeCompletedSuccessfully: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFwdChangesRequireRollback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_9c
    if-eqz v0, :cond_df

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v1, :cond_df

    .line 1049
    iget-object v1, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1050
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " again."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1057
    :cond_df
    if-eqz v0, :cond_163

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v1, :cond_163

    .line 1058
    const-string v1, "CallFeaturesSetting"

    const-string v2, "Requested to rollback Fwd changes."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v8, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1061
    if-eqz v8, :cond_163

    .line 1062
    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1064
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    move v6, v7

    .line 1065
    :goto_f6
    array-length v0, v8

    if-ge v6, v0, :cond_163

    .line 1066
    aget-object v4, v8, v6

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1070
    iget v0, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncResult;

    .line 1071
    if-eqz v0, :cond_155

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_155

    .line 1072
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_159

    const/4 v1, 0x3

    :goto_144
    iget v2, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1065
    :cond_155
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f6

    :cond_159
    move v1, v7

    .line 1073
    goto :goto_144

    .line 1087
    :cond_15b
    const-string v0, "No need to revert"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1088
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    .line 1091
    :cond_163
    return-void
.end method

.method private updateCurrentCountrysummary()V
    .registers 3

    .prologue
    .line 3498
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkAutoCurrentCountryName()Ljava/lang/String;

    move-result-object v0

    .line 3499
    const-string v1, "assisted_dialing_current_country_network_error"

    if-ne v0, v1, :cond_11

    .line 3500
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e069c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 3504
    :goto_10
    return-void

    .line 3502
    :cond_11
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method private updateEtcPreference()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2176
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_15

    .line 2177
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2179
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2182
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2b

    .line 2183
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_auto_retry"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2185
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_ef

    move v0, v1

    :goto_28
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2188
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_41

    .line 2189
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2190
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_f2

    move v0, v1

    :goto_3e
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2193
    :cond_41
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_5b

    .line 2194
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_tty_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2197
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2198
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2201
    :cond_5b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_71

    .line 2202
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "own_video_receivedcall"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f5

    move v0, v1

    :goto_6e
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2206
    :cond_71
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_87

    .line 2207
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "usecall_fail_option"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f8

    move v0, v1

    :goto_84
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2211
    :cond_87
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9d

    .line 2212
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_eye_contact"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_fa

    move v0, v1

    :goto_9a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2216
    :cond_9d
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_b0

    .line 2217
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "country_code"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 2221
    :cond_b0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b7

    .line 2222
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getDDTMData()V

    .line 2223
    :cond_b7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_be

    .line 2224
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateFailOptionCmccSummary()V

    .line 2227
    :cond_be
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    if-eqz v0, :cond_c7

    .line 2228
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/AssistedDialingEnabler;->resume()V

    .line 2234
    :cond_c7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_ee

    .line 2235
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_extra_volume"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2236
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_extra_vol"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2239
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_fc

    :goto_eb
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2241
    :cond_ee
    return-void

    :cond_ef
    move v0, v2

    .line 2185
    goto/16 :goto_28

    :cond_f2
    move v0, v2

    .line 2190
    goto/16 :goto_3e

    :cond_f5
    move v0, v2

    .line 2202
    goto/16 :goto_6e

    :cond_f8
    move v0, v2

    .line 2207
    goto :goto_84

    :cond_fa
    move v0, v2

    .line 2212
    goto :goto_9a

    :cond_fc
    move v1, v2

    .line 2239
    goto :goto_eb
.end method

.method private updateExtraRingerPreference()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2100
    .line 2102
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_20

    .line 2103
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "extra_ringer"

    const-string v0, "extra_ringer_default_on"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    :goto_15
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2108
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-lez v0, :cond_23

    :goto_1d
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2110
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 2103
    goto :goto_15

    :cond_23
    move v1, v2

    .line 2108
    goto :goto_1d
.end method

.method private updateFailOptionCmccSummary()V
    .registers 5

    .prologue
    .line 3471
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usecall_fail_option_cmcc"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3472
    .local v0, UseCallFailOption:I
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->FAIL_OPTION:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 3473
    return-void
.end method

.method private updateInternationalCallServicePreference()V
    .registers 5

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    if-eqz v0, :cond_45

    .line 2114
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "int_call_svc_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2118
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "int_call_svc_value"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2120
    const v2, 0x7f0e0771

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2121
    if-lez v1, :cond_29

    const v0, 0x7f0e076f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2123
    :cond_29
    const-string v3, "%d"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    if-lez v1, :cond_40

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2126
    const v0, 0x7f0e0772

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2129
    :cond_40
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2131
    :cond_45
    return-void
.end method

.method private updateMyCallSoundPreference()V
    .registers 4

    .prologue
    .line 2134
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_14

    .line 2135
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    .line 2136
    .local v0, isextravalon:Z
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_15

    const/4 v1, 0x1

    :goto_11
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2138
    .end local v0           #isextravalon:Z
    :cond_14
    return-void

    .line 2136
    .restart local v0       #isextravalon:Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private updatePowerkeyPreference()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2088
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v1, :cond_17

    .line 2089
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2091
    .local v0, endcallbutton:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 2092
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    .line 2097
    .end local v0           #endcallbutton:I
    :cond_17
    :goto_17
    return-void

    .line 2094
    .restart local v0       #endcallbutton:I
    :cond_18
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto :goto_17
.end method

.method private updatePreferredTtyModeSummary(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2302
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2303
    packed-switch p1, :pswitch_data_24

    .line 2311
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2312
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2314
    :goto_1b
    return-void

    .line 2308
    :pswitch_1c
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 2303
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private updateProximitySensorPreference()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2076
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    .line 2077
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1b

    .line 2079
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    .line 2083
    :goto_13
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2085
    :cond_1a
    return-void

    .line 2081
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z

    goto :goto_13
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2331
    .line 2332
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    .line 2338
    if-nez v0, :cond_59

    .line 2340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2342
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v1, 0x7f0e0091

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2343
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2344
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2346
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2347
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2363
    :goto_4b
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2364
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2365
    :cond_58
    return-void

    .line 2350
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2354
    iget-object v1, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2355
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2356
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2357
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2359
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2360
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4b
.end method


# virtual methods
.method protected initGeneralSetting(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 2802
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 2804
    if-nez p1, :cond_24

    .line 2806
    const-string v0, "button_videocall_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2808
    const-string v1, "button_voicemail_category_key"

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2812
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2813
    if-eqz v0, :cond_1e

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2814
    :cond_1e
    if-eqz v1, :cond_23

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 3188
    :cond_23
    :goto_23
    return-void

    .line 2819
    :cond_24
    const-string v0, "restrict_international_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f6

    .line 2820
    const-string v0, "toggle_internationalcall"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    .line 2821
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "internationalcall_settings"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3f3

    move v0, v1

    :goto_45
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2827
    :goto_48
    const-string v0, "international_call_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_401

    .line 2828
    const-string v0, "intcallservice_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/IntCallServicePreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    .line 2834
    :goto_5a
    const-string v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_411

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_411

    .line 2836
    const-string v0, "voicecall_protection_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    .line 2837
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "enable_call_protect_when_calling"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_40e

    move v0, v1

    :goto_83
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2843
    :goto_86
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 2844
    const-string v0, "button_call_rejection_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2847
    :cond_97
    const-string v0, "button_dtmf_settings"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 2848
    const-string v0, "button_auto_retry_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 2849
    const-string v0, "button_hac_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 2850
    const-string v0, "button_tty_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 2851
    const-string v0, "toggle_country_name"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    .line 2852
    const-string v0, "country_code"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    .line 2853
    const-string v0, "button_ddtm_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    .line 2854
    const-string v0, "proximity_sensor_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    .line 2855
    const-string v0, "powerkey_end_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    .line 2856
    const-string v0, "assisted_dialing_switch"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

    .line 2857
    const-string v0, "extra_ringtone_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    .line 2858
    const-string v0, "callsettings_incallsound_eq"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    .line 2859
    const-string v0, "showing_extra_vol_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    .line 2860
    const-string v0, "assisted_dialing_current_country_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    .line 2861
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RemindRingtonePreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    .line 2863
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_153

    .line 2864
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0006

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_14e

    const-string v0, "dtmf_type_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41c

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_41c

    .line 2866
    :cond_14e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2873
    :cond_153
    :goto_153
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_171

    .line 2874
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_16c

    const-string v0, "auto_retry_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_425

    .line 2875
    :cond_16c
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2882
    :cond_171
    :goto_171
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_18f

    .line 2883
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0005

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_18a

    const-string v0, "hac_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42e

    .line 2884
    :cond_18a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2891
    :cond_18f
    :goto_18f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1ad

    .line 2892
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a8

    const-string v0, "tty_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_437

    .line 2893
    :cond_1a8
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2900
    :cond_1ad
    :goto_1ad
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1be

    .line 2901
    const-string v0, "vt_cmcc_operator_fallback"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_440

    .line 2902
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2909
    :cond_1be
    :goto_1be
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1d1

    .line 2910
    const-string v0, "vt_cmcc_operator_fallback"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d1

    .line 2911
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2912
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    .line 2916
    :cond_1d1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v3, :cond_1e9

    const-string v0, "remove_call_forwarding"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e9

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 2918
    :cond_1e9
    const-string v0, "button_callType_select_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallTypeSelect:Landroid/preference/PreferenceScreen;

    .line 2919
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallTypeSelect:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1fe

    .line 2920
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallTypeSelect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2921
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallTypeSelect:Landroid/preference/PreferenceScreen;

    .line 2924
    :cond_1fe
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    if-eqz v0, :cond_211

    .line 2925
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_211

    .line 2926
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2927
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    .line 2930
    :cond_211
    const-string v0, "button_respond_via_sms_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2931
    if-eqz v0, :cond_21c

    .line 2932
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2934
    :cond_21c
    const-string v0, "set_world_phone_option_for_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_449

    .line 2935
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2936
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2937
    const-string v0, "button_fdn_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2938
    const-string v0, "button_misc_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2940
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2942
    if-eq v0, v2, :cond_259

    .line 2943
    const-string v0, "button_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2994
    :cond_259
    :goto_259
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_26a

    .line 2995
    const-string v0, "international_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_527

    .line 2996
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3003
    :cond_26a
    :goto_26a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_27b

    .line 3004
    const-string v0, "international_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_530

    .line 3005
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3012
    :cond_27b
    :goto_27b
    const-string v0, "powey_key_ends_call_during_screen_off"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_539

    .line 3013
    const-string v0, "powerkey_end_preference"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3014
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    .line 3019
    :goto_28e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_29f

    .line 3020
    const-string v0, "ddtm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_544

    .line 3021
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3028
    :cond_29f
    :goto_29f
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b0

    .line 3029
    const-string v0, "button_ipcall_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3032
    :cond_2b0
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55f

    .line 3034
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "CURRENT_NETWORK"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_54d

    .line 3035
    const-string v0, "button_ipcallcdma_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3036
    if-eqz v0, :cond_2cf

    .line 3037
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3054
    :cond_2cf
    :goto_2cf
    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e0

    .line 3055
    const-string v0, "numberregion_list_preference"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3058
    :cond_2e0
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_594

    .line 3061
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "CURRENT_NETWORK"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5fa

    .line 3064
    :goto_2f4
    if-ne v2, v3, :cond_56c

    .line 3065
    const-string v0, "dual phone type cdma"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 3066
    const-string v0, "button_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3067
    if-eqz v0, :cond_306

    .line 3068
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3069
    :cond_306
    const-string v0, "button_callType_select_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3070
    if-eqz v0, :cond_311

    .line 3071
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3072
    :cond_311
    const-string v0, "button_gsm_voicecall_forwarding"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3073
    if-eqz v0, :cond_31c

    .line 3074
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3075
    :cond_31c
    const-string v0, "button_voicemail_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3076
    if-eqz v0, :cond_327

    .line 3077
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3091
    :cond_327
    :goto_327
    const-string v0, "button_misc_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3092
    if-eqz v0, :cond_332

    .line 3093
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3094
    :cond_332
    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_345

    .line 3095
    const-string v0, "button_call_rejection_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3096
    if-eqz v0, :cond_345

    .line 3097
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3121
    :cond_345
    :goto_345
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_356

    .line 3122
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_356

    .line 3123
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3127
    :cond_356
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_367

    .line 3128
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_367

    .line 3129
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3133
    :cond_367
    const-string v0, "extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_378

    .line 3134
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_378

    .line 3135
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3139
    :cond_378
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38b

    .line 3140
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_38b

    .line 3141
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3145
    :cond_38b
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39e

    .line 3147
    const-string v0, "button_kt_additional_service"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3149
    if-eqz v0, :cond_39e

    .line 3150
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3154
    :cond_39e
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e2

    .line 3155
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3156
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    .line 3157
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3158
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    .line 3159
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d2

    .line 3160
    new-instance v0, Lcom/android/phone/AssistedDialingEnabler;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/phone/AssistedDialingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    .line 3161
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5cb

    .line 3162
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateCurrentCountrysummary()V

    .line 3181
    :goto_3d4
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e6

    const-string v0, "SEC_AP_VTONLY"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3184
    :cond_3e6
    const-string v0, "voicecall_type"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3185
    if-eqz v0, :cond_23

    .line 3186
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_23

    :cond_3f3
    move v0, v2

    .line 2821
    goto/16 :goto_45

    .line 2824
    :cond_3f6
    const-string v0, "toggle_internationalcall"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_48

    .line 2830
    :cond_401
    const-string v0, "intcallservice_preference"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2831
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    goto/16 :goto_5a

    :cond_40e
    move v0, v2

    .line 2837
    goto/16 :goto_83

    .line 2840
    :cond_411
    const-string v0, "voicecall_protection_preference"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_86

    .line 2868
    :cond_41c
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2869
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_153

    .line 2877
    :cond_425
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2878
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_171

    .line 2886
    :cond_42e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2887
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_18f

    .line 2895
    :cond_437
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2896
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_1ad

    .line 2904
    :cond_440
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2905
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1be

    .line 2946
    :cond_449
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_477

    .line 2947
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2948
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2949
    const-string v0, "button_fdn_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2950
    const-string v0, "button_misc_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_259

    .line 2953
    :cond_477
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0002

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_259

    .line 2954
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2955
    if-eqz v0, :cond_48f

    .line 2956
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2957
    :cond_48f
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2958
    if-eqz v0, :cond_49a

    .line 2959
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2961
    :cond_49a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2962
    if-ne v0, v3, :cond_4db

    .line 2963
    const-string v0, "button_fdn_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2964
    if-eqz v0, :cond_4ad

    .line 2965
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2966
    :cond_4ad
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b000d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4c8

    const-string v0, "voice_privacy_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c8

    .line 2968
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 2970
    :cond_4c8
    const-string v0, "cdma_additional_setting_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_259

    .line 2971
    const-string v0, "button_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_259

    .line 2973
    :cond_4db
    if-ne v0, v2, :cond_50e

    .line 2975
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4ee

    .line 2976
    const-string v0, "button_misc_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2978
    :cond_4ee
    const-string v0, "button_fdn_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2979
    if-eqz v0, :cond_4f9

    .line 2980
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2982
    :cond_4f9
    const-string v0, "button_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2983
    const-string v5, "disable_additional_settings"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_259

    .line 2984
    if-eqz v0, :cond_259

    .line 2985
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_259

    .line 2989
    :cond_50e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2998
    :cond_527
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2999
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_26a

    .line 3007
    :cond_530
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3008
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    goto/16 :goto_27b

    .line 3016
    :cond_539
    const-string v0, "call_answer_preference"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_28e

    .line 3023
    :cond_544
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3024
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_29f

    .line 3040
    :cond_54d
    const-string v0, "IP call  CDMA Mode"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 3041
    const-string v0, "button_ipcall_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3042
    if-eqz v0, :cond_2cf

    .line 3043
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2cf

    .line 3048
    :cond_55f
    const-string v0, "button_ipcallcdma_category_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3049
    if-eqz v0, :cond_2cf

    .line 3050
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2cf

    .line 3080
    :cond_56c
    const-string v0, "dual phone type gsm"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 3081
    const-string v0, "button_cdma_additional_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3082
    if-eqz v0, :cond_57c

    .line 3083
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3084
    :cond_57c
    const-string v0, "button_callType_select_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3085
    if-eqz v0, :cond_587

    .line 3086
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3087
    :cond_587
    const-string v0, "button_cdma_voicecall_forwarding"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3088
    if-eqz v0, :cond_327

    .line 3089
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_327

    .line 3102
    :cond_594
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5bf

    .line 3103
    const-string v0, "button_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3104
    if-eqz v0, :cond_5a7

    .line 3105
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3112
    :cond_5a7
    :goto_5a7
    const-string v0, "button_cdma_voicecall_forwarding"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3113
    if-eqz v0, :cond_5b2

    .line 3114
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3115
    :cond_5b2
    const-string v0, "button_gsm_voicecall_forwarding"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3116
    if-eqz v0, :cond_345

    .line 3117
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_345

    .line 3108
    :cond_5bf
    const-string v0, "button_cdma_additional_more_expand_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3109
    if-eqz v0, :cond_5a7

    .line 3110
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5a7

    .line 3164
    :cond_5cb
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3d4

    .line 3167
    :cond_5d2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3168
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3169
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

    .line 3170
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    goto/16 :goto_3d4

    .line 3173
    :cond_5e2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5eb

    .line 3174
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3175
    :cond_5eb
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5f4

    .line 3176
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3177
    :cond_5f4
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingSwitch:Landroid/preference/SwitchPreference;

    .line 3178
    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    goto/16 :goto_3d4

    :cond_5fa
    move v2, v3

    goto/16 :goto_2f4
.end method

.method protected initVideoSetting(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3193
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 3194
    const-string v0, "button_videocall_category_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 3196
    if-nez p1, :cond_16

    .line 3197
    if-eqz v0, :cond_15

    .line 3198
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3399
    :cond_15
    :goto_15
    return-void

    .line 3202
    :cond_16
    const-string v4, "ctc_voicecall_additional_setting"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3203
    if-eqz v0, :cond_15

    .line 3204
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_15

    .line 3287
    :cond_24
    const-string v1, "ims_vt_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 3289
    const-string v1, "showme_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3290
    if-eqz v1, :cond_37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3292
    :cond_37
    const-string v1, "failoption_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3293
    if-eqz v1, :cond_42

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3295
    :cond_42
    const-string v1, "emotionalEyeContact_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3296
    if-eqz v1, :cond_4d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3298
    :cond_4d
    const-string v1, "toggle_videocall_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3299
    if-eqz v1, :cond_58

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3338
    :cond_58
    :goto_58
    const-string v1, "toggle_videocall_indicator"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    .line 3339
    const-string v1, "videocall_message"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    .line 3340
    const-string v1, "toggle_videocall_speaker"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    .line 3342
    const-string v1, "ims_vt_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_86

    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_195

    .line 3359
    :cond_86
    const-string v1, "toggle_videocall"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallPreference:Landroid/preference/CheckBoxPreference;

    .line 3360
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_af

    .line 3361
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "videocall_settings"

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_169

    move v1, v2

    :goto_a5
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_16c

    move v1, v2

    :goto_ac
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 3366
    :cond_af
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_178

    .line 3367
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_cd

    .line 3368
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "videocall_indicator"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_16f

    move v1, v2

    :goto_ca
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 3369
    :cond_cd
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_e3

    .line 3370
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "videocallmessage_settings"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_172

    move v1, v2

    :goto_e0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 3371
    :cond_e3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_f8

    .line 3372
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "videocall_speaker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_175

    :goto_f5
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 3373
    :cond_f8
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3374
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_15

    .line 3375
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 3302
    :cond_10b
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 3303
    const-string v4, "button_videocall_category_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 3305
    if-eqz v4, :cond_11a

    .line 3306
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3308
    :cond_11a
    const-string v1, "preset_image"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3309
    if-eqz v1, :cond_125

    .line 3310
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3312
    :cond_125
    const-string v1, "showme_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3313
    if-eqz v1, :cond_130

    .line 3314
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3316
    :cond_130
    const-string v1, "failoption_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3317
    if-eqz v1, :cond_13b

    .line 3318
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3320
    :cond_13b
    const-string v1, "emotionalEyeContact_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3321
    if-eqz v1, :cond_146

    .line 3322
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3324
    :cond_146
    const-string v1, "toggle_videocall_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3325
    if-eqz v1, :cond_151

    .line 3326
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3328
    :cond_151
    const-string v1, "toggle_videocall"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3329
    if-eqz v1, :cond_15c

    .line 3330
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3332
    :cond_15c
    const-string v1, "capture_imageviwer_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 3333
    if-eqz v1, :cond_58

    .line 3334
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_58

    :cond_169
    move v1, v3

    .line 3361
    goto/16 :goto_a5

    :cond_16c
    move v1, v3

    goto/16 :goto_ac

    :cond_16f
    move v1, v3

    .line 3368
    goto/16 :goto_ca

    :cond_172
    move v1, v3

    .line 3370
    goto/16 :goto_e0

    :cond_175
    move v2, v3

    .line 3372
    goto/16 :goto_f5

    .line 3379
    :cond_178
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_181

    .line 3380
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3382
    :cond_181
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_18a

    .line 3383
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3385
    :cond_18a
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_15

    .line 3386
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 3390
    :cond_195
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_19e

    .line 3391
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3393
    :cond_19e
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1a7

    .line 3394
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 3396
    :cond_1a7
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_15

    .line 3397
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15
.end method

.method protected initVoicemailSetting(Z)V
    .registers 4
    .parameter

    .prologue
    .line 3403
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 3404
    const-string v0, "button_vvm_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualVoiceMailSettings:Landroid/preference/PreferenceScreen;

    .line 3406
    const-string v0, "visual_voicemail_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualVoiceMailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1f

    .line 3407
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVisualVoiceMailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3409
    :cond_1f
    if-nez p1, :cond_2d

    .line 3410
    const-string v0, "button_voicemail_category_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 3411
    if-eqz v0, :cond_2c

    .line 3412
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3435
    :cond_2c
    :goto_2c
    return-void

    .line 3416
    :cond_2d
    const-string v0, "button_voicemail_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 3417
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_4e

    .line 3418
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 3419
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 3420
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0190

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 3423
    :cond_4e
    const-string v0, "button_voicemail_provider_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 3424
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2c

    .line 3425
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3426
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 3427
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 3428
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 3429
    :cond_79
    const-string v0, "button_voicemail_notification_vibrate_when_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    .line 3431
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 3433
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    goto :goto_2c
.end method

.method protected initVoipSetting(Z)V
    .registers 3
    .parameter

    .prologue
    .line 3438
    if-eqz p1, :cond_d

    .line 3439
    const-string v0, "disable_sip_call_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3440
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSipCallSettings()V

    .line 3443
    :cond_d
    return-void
.end method

.method protected initializeSettings()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2790
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initGeneralSetting(Z)V

    .line 2791
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initVideoSetting(Z)V

    .line 2792
    const-string v0, "remove_voicemail_category"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    .line 2797
    :goto_13
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initVoipSetting(Z)V

    .line 2798
    return-void

    .line 2795
    :cond_17
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->initVoicemailSetting(Z)V

    goto :goto_13
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1981
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1988
    if-nez p1, :cond_4a

    .line 1989
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4a

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_ADD_VOICEMAIL Intent is thrown. current VM data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v3, :cond_b3

    .line 1996
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 2010
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 2011
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 2014
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "SEC_AP_VTONLY"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 2016
    const-string v0, "voicecall_type"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    .line 2017
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2018
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2019
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2022
    const-string v0, "persist.sys.ims.volte_supported"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2023
    const/4 v1, -0x1

    if-eq v1, v0, :cond_df

    if-ne v3, v0, :cond_df

    const-string v0, "true"

    const-string v1, "persist.sys.ims.reg"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 2025
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2032
    :cond_b2
    :goto_b2
    return-void

    .line 1998
    :cond_b3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1999
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2001
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4a

    .line 2002
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 2003
    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2004
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4a

    .line 2027
    :cond_df
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_b2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1114
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1115
    const/4 v1, 0x3

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x64

    if-ne p1, v1, :cond_52

    .line 1116
    :cond_3d
    const-string v0, "onActivityResult 100"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1117
    if-eqz p3, :cond_51

    .line 1118
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1119
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/RemindRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 1206
    :cond_51
    :goto_51
    return-void

    .line 1125
    :cond_52
    const/4 v1, 0x2

    if-ne p1, v1, :cond_134

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMProviderSettingsForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1130
    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 1131
    iput-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 1134
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    if-eq p2, v4, :cond_88

    .line 1135
    const-string v2, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1164
    :goto_7b
    if-eqz v0, :cond_f3

    .line 1165
    const-string v0, "Failure in return from voicemail provider"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1166
    if-eqz v1, :cond_ec

    .line 1167
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_51

    .line 1138
    :cond_88
    if-nez p3, :cond_90

    .line 1139
    const-string v2, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_7b

    .line 1142
    :cond_90
    const-string v2, "com.android.phone.Signout"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 1143
    const-string v0, "Provider requested signout"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1144
    if-eqz v1, :cond_a8

    .line 1145
    const-string v0, "Going back to previous provider on signout"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_51

    .line 1148
    :cond_a8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relaunching activity and ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1151
    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1153
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_51

    .line 1157
    :cond_d8
    const-string v2, "com.android.phone.VoicemailNumber"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1158
    if-eqz v3, :cond_e6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17b

    .line 1159
    :cond_e6
    const-string v2, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_7b

    .line 1169
    :cond_ec
    const-string v0, "Not switching back the provider since this is not forced config"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 1173
    :cond_f3
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1174
    const-string v0, "com.android.phone.ForwardingNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    const-string v0, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: vm provider cfg result "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_131

    const-string v0, "has"

    :goto_112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " forwarding number"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_51

    .line 1180
    :cond_131
    const-string v0, " does not have"

    goto :goto_112

    .line 1187
    :cond_134
    if-ne p1, v0, :cond_176

    .line 1188
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    if-eq p2, v4, :cond_142

    .line 1189
    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 1193
    :cond_142
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_15a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_166

    .line 1196
    :cond_15a
    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1197
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_51

    .line 1200
    :cond_166
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    .line 1201
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_51

    .line 1205
    :cond_176
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_51

    :cond_17b
    move v0, v6

    goto/16 :goto_7b
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x1f6

    .line 1846
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1847
    packed-switch p2, :pswitch_data_40

    .line 1875
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1876
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 1878
    :cond_1b
    :goto_1b
    return-void

    .line 1849
    :pswitch_1c
    const-string v0, "Neutral button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 1852
    :pswitch_22
    const-string v0, "Negative button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1853
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_8

    .line 1856
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_8

    .line 1860
    :pswitch_2f
    const-string v0, "Positive button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1861
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_3c

    .line 1864
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1b

    .line 1866
    :cond_3c
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_1b

    .line 1847
    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_1c
        :pswitch_22
        :pswitch_2f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1912
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1913
    const-string v0, "Creating activity"

    invoke-static {v0, v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    .line 1915
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1916
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1917
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CURRENT_NETWORK"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_ed

    .line 1918
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->setCurrentPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1924
    :cond_31
    :goto_31
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1927
    const-string v0, "feature_ltn_auto_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1928
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1932
    :cond_45
    const-string v0, "ddtm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1933
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->connectToRilService()V

    .line 1935
    :cond_50
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1937
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1942
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1943
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1945
    const-string v0, "vt_cmcc_operator_fallback"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1946
    const-string v0, "failoption_list_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    .line 1947
    const-string v0, "automaticaccept_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    .line 1949
    :cond_8c
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1950
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RemindRingtonePreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    .line 1951
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v0}, Lcom/android/phone/RemindRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 1953
    if-eqz v0, :cond_ab

    .line 1954
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/RemindRingtonePreference;->setAlert(Landroid/net/Uri;)V

    .line 1957
    :cond_ab
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->initializeSettings()V

    .line 1959
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mHeaderSettings:Landroid/preference/PreferenceScreen;

    .line 1961
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1962
    if-eqz v0, :cond_bd

    .line 1964
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1967
    :cond_bd
    const-string v0, "powey_key_ends_call_during_screen_off"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 1968
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1971
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1975
    :cond_e3
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->setHasOptionsMenu(Z)V

    .line 1976
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mEntrySettings:Landroid/preference/PreferenceScreen;

    .line 1977
    return-void

    .line 1920
    :cond_ed
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->setCurrentPhone(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_31
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const/16 v2, 0x259

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const v3, 0x7f0e0087

    .line 1745
    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x190

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x1f6

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x258

    if-ne p1, v1, :cond_7d

    .line 1749
    :cond_1c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1752
    const v0, 0x7f0e007f

    .line 1753
    sparse-switch p1, :sswitch_data_fe

    .line 1784
    const v1, 0x7f0e0084

    .line 1787
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1791
    :goto_31
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1792
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1793
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1795
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->setCancelable(Z)V

    .line 1796
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1838
    :cond_4a
    :goto_4a
    return-object v0

    .line 1755
    :sswitch_4b
    const v1, 0x7f0e008c

    .line 1756
    const v0, 0x7f0e0054

    .line 1758
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1763
    :sswitch_55
    const v1, 0x7f0e0090

    .line 1764
    const v0, 0x7f0e0054

    .line 1766
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1769
    :sswitch_5f
    const v1, 0x7f0e008d

    .line 1771
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1774
    :sswitch_66
    const v1, 0x7f0e008e

    .line 1776
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1779
    :sswitch_6d
    const v1, 0x7f0e008f

    .line 1780
    const v3, 0x7f0e01f8

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1781
    const v3, 0x7f0e01f9

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1803
    :cond_7d
    if-eq p1, v2, :cond_87

    const/16 v1, 0x25a

    if-eq p1, v1, :cond_87

    const/16 v1, 0x25b

    if-ne p1, v1, :cond_ba

    .line 1805
    :cond_87
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1806
    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1807
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1809
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->setCancelable(Z)V

    .line 1810
    if-ne p1, v2, :cond_ae

    const v0, 0x7f0e0081

    :goto_a5
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1814
    goto :goto_4a

    .line 1810
    :cond_ae
    const/16 v0, 0x25b

    if-ne p1, v0, :cond_b6

    const v0, 0x7f0e0082

    goto :goto_a5

    :cond_b6
    const v0, 0x7f0e0080

    goto :goto_a5

    .line 1815
    :cond_ba
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_4a

    .line 1816
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usecall_fail_option_cmcc"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mListIndex:I

    .line 1817
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e029f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$9;

    invoke-direct {v2, p0}, Lcom/android/phone/CallFeaturesSetting$9;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080031

    iget v2, p0, Lcom/android/phone/CallFeaturesSetting;->mListIndex:I

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$8;

    invoke-direct {v3, p0}, Lcom/android/phone/CallFeaturesSetting$8;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_4a

    .line 1753
    nop

    :sswitch_data_fe
    .sparse-switch
        0x190 -> :sswitch_55
        0x1f4 -> :sswitch_5f
        0x1f5 -> :sswitch_66
        0x1f6 -> :sswitch_6d
        0x258 -> :sswitch_4b
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 2035
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 2036
    const-string v0, "powey_key_ends_call_during_screen_off"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2037
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2039
    :cond_14
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 974
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1a

    .line 981
    :cond_19
    :goto_19
    return-void

    .line 978
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_19

    .line 979
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_19
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 990
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_f

    .line 993
    const-string v1, "updating default for voicemail dialog"

    invoke-static {v1, v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    .line 994
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1007
    :cond_e
    :goto_e
    return-object v0

    .line 998
    :cond_f
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1006
    const-string v0, "updating default for call forwarding dialogs"

    invoke-static {v0, v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0055

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 611
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    if-eqz v0, :cond_18

    .line 612
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/AssistedDialingEnabler;->pause()V

    .line 616
    :cond_18
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_49

    .line 888
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 967
    :cond_48
    :goto_48
    return v4

    .line 891
    :cond_49
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_51

    .line 892
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_48

    .line 893
    :cond_51
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_ae

    .line 894
    check-cast p2, Ljava/lang/String;

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voicemail Provider changes from \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    .line 900
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 901
    const-string v0, "No change is made toward VM provider setting."

    invoke-static {v0, v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    goto :goto_48

    .line 904
    :cond_8d
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 906
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 915
    if-nez v0, :cond_a3

    .line 917
    const-string v0, "Saved preferences not found - invoking config"

    invoke-static {v0, v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    .line 918
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 919
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_48

    .line 921
    :cond_a3
    const-string v1, "Saved preferences found - switching to them"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 923
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 924
    invoke-direct {p0, p2, v0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto :goto_48

    .line 926
    :cond_ae
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c5

    .line 927
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 930
    :cond_c5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_ce

    .line 931
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 932
    :cond_ce
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_12a

    .line 933
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous Country Code Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "country_code"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 937
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Country Code Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 938
    :cond_12a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1a7

    .line 939
    check-cast p2, Ljava/lang/Boolean;

    .line 940
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 941
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 942
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Checked US/Canada"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous Country Code Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCountryCodePref:Landroid/preference/EditTextPreference;

    const-string v1, "011"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "country_code"

    const-string v2, "011"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 946
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Country Code Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 948
    :cond_19e
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Unchecked US/Canada"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 952
    :cond_1a7
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "SEC_AP_VTONLY"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 954
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_48

    .line 955
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 957
    :try_start_1c3
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 958
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 959
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1dd
    .catch Ljava/lang/NumberFormatException; {:try_start_1c3 .. :try_end_1dd} :catch_1df

    goto/16 :goto_48

    .line 960
    :catch_1df
    move-exception v0

    .line 961
    const-string v1, "CallFeaturesSetting"

    const-string v2, "could not persist voice call type setting"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 633
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v2, :cond_7

    .line 800
    :cond_6
    :goto_6
    return v1

    .line 635
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eq p2, v2, :cond_6

    .line 637
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v2, :cond_6

    .line 639
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2c

    .line 640
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_auto_retry"

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_28

    move v0, v1

    :cond_28
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 644
    :cond_2c
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_57

    .line 645
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_39

    move v0, v1

    .line 647
    :cond_39
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hearing_aid"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "HACSetting"

    if-eqz v0, :cond_54

    const-string v0, "ON"

    :goto_50
    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_54
    const-string v0, "OFF"

    goto :goto_50

    .line 653
    :cond_57
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_9f

    .line 654
    const-string v2, "onPreferenceTreeClick: Voicemail Settings Preference is clicked."

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: Invoking cfg intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 666
    :cond_8e
    const-string v1, "onPreferenceTreeClick: No Intent is available. Use default behavior defined in xml."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 672
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 673
    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 800
    :cond_99
    :goto_99
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_6

    .line 675
    :cond_9f
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_cd

    .line 676
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mShowMeForVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 677
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "own_video_receivedcall"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 680
    :cond_bc
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "own_video_receivedcall"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 683
    :cond_cd
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_fb

    .line 684
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mCallFailOption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 685
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "usecall_fail_option"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 688
    :cond_ea
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usecall_fail_option"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 691
    :cond_fb
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_129

    .line 692
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mEmotionalEyeContact:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_118

    .line 693
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "emotional_eye_contact"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 696
    :cond_118
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emotional_eye_contact"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 699
    :cond_129
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_13c

    .line 700
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_136

    move v0, v1

    .line 701
    :cond_136
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->setDDTMData(B)V

    goto/16 :goto_6

    .line 703
    :cond_13c
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_145

    .line 704
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onProximitySensorPreferenceTreeClick()V

    goto/16 :goto_6

    .line 706
    :cond_145
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-ne p2, v2, :cond_158

    .line 707
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 711
    :cond_158
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_17a

    .line 712
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 713
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "extra_ringer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 716
    :cond_16f
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "extra_ringer"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 719
    :cond_17a
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_19c

    .line 720
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_191

    .line 721
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "show_extra_vol"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 724
    :cond_191
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_extra_vol"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 727
    :cond_19c
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1dd

    .line 728
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 729
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVoiceCallProtection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1ce

    .line 731
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_call_protect_when_calling"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    const-string v0, "on off"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    :goto_1c1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionValue()V

    .line 738
    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 739
    const-string v0, "Send broadcast - call protection status changed"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 734
    :cond_1ce
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 735
    const-string v4, "on off"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1c1

    .line 741
    :cond_1dd
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1ff

    .line 742
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mInternationalcallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 743
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "internationalcall_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 745
    :cond_1f4
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "internationalcall_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 747
    :cond_1ff
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_221

    .line 748
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 749
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "videocall_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 751
    :cond_216
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocall_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 753
    :cond_221
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_243

    .line 754
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_238

    .line 755
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "videocall_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 757
    :cond_238
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocall_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 759
    :cond_243
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_265

    .line 760
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallMessagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 761
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "videocallmessage_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 763
    :cond_25a
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocallmessage_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 766
    :cond_265
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2ba

    .line 767
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallIndicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 768
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocall_indicator"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 769
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.internal.ims.vt_status"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ims_register_state"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_28e

    move v0, v1

    .line 771
    :cond_28e
    const-string v3, "Enable"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 774
    :cond_29c
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocall_indicator"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 775
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.internal.ims.vt_status"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    const-string v3, "Enable"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 780
    :cond_2ba
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2dc

    .line 781
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVideocallSpeakerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2d1

    .line 782
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "videocall_speaker"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 784
    :cond_2d1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "videocall_speaker"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 787
    :cond_2dc
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mFailoption_cmcc:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_2e7

    .line 788
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto/16 :goto_6

    .line 790
    :cond_2e7
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_309

    .line 791
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mAutomaticaccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 792
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "automatic_accept"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 794
    :cond_2fe
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_accept"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 796
    :cond_309
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRemindPreference:Lcom/android/phone/RemindRingtonePreference;

    if-ne p2, v0, :cond_99

    .line 797
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 798
    const-string v2, "REMIND_RINGTONE_SAVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_99
.end method

.method public onPrepareDialog(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 1739
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 1740
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2143
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 2144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 2146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2147
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2148
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2151
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2152
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2153
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 2154
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    move v0, v1

    .line 2155
    :goto_35
    if-ge v0, v4, :cond_68

    .line 2156
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 2157
    if-eq v5, v2, :cond_40

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2155
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 2162
    :cond_43
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateProximitySensorPreference()V

    .line 2163
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updatePowerkeyPreference()V

    .line 2165
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateEtcPreference()V

    .line 2166
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 2168
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateCurrentCountrysummary()V

    .line 2170
    :cond_5f
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateInternationalCallServicePreference()V

    .line 2171
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateMyCallSoundPreference()V

    .line 2172
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateExtraRingerPreference()V

    .line 2173
    :cond_68
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1014
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 1016
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1022
    :goto_6
    return-void

    .line 1020
    :cond_7
    const-string v0, "startSubActivity: starting requested subactivity"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;Z)V

    .line 1021
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method

.method protected updateVoiceNumberField()V
    .registers 3

    .prologue
    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoiceNumberField(). mSubMenuVoicemailSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v0, :cond_1d

    .line 1726
    :goto_1c
    return-void

    .line 1714
    :cond_1d
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkIsVoiceMailNumberDefault()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1715
    const-string v0, "*86"

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1719
    :goto_2f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 1720
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1722
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1723
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_57

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1725
    :goto_48
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 1717
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    goto :goto_2f

    .line 1723
    :cond_57
    const v0, 0x7f0e01fd

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_48
.end method
