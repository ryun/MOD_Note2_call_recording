.class public Lcom/android/phone/sip/SipEditor;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipEditor$4;,
        Lcom/android/phone/sip/SipEditor$AdvancedSettings;,
        Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;,
        Lcom/android/phone/sip/SipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mDiscardClickecd:Z

.field private mDisplayNameSet:Z

.field private mHomeButtonClicked:Z

.field private mIsEditCase:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mUpdateRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mDiscardClickecd:Z

    .line 688
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipEditor;Landroid/preference/Preference;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipEditor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipEditor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->unregisterOldPrimaryAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipEditor;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method private checkIfDisplayNameSet()V
    .registers 5

    .prologue
    .line 627
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    .line 630
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName set? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_41

    .line 632
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 636
    :goto_3e
    return-void

    .line 628
    :cond_3f
    const/4 v1, 0x0

    goto :goto_17

    .line 634
    :cond_41
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 345
    if-nez p1, :cond_3

    .line 348
    :goto_2
    return-void

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 347
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 639
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .registers 8
    .parameter "pref"

    .prologue
    .line 556
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_12

    aget-object v2, v0, v1

    .line 557
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_f

    return-object v2

    .line 556
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 559
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_12
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .registers 4

    .prologue
    .line 604
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 606
    .local v0, pref:Landroid/preference/ListPreference;
    const v1, 0x7f0e0262

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z
    .registers 5
    .parameter "key"

    .prologue
    .line 394
    iget-object v0, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 395
    .local v0, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 563
    if-eqz p1, :cond_8f

    .line 564
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Edit the existing profile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :try_start_1f
    const-class v2, Landroid/net/sip/SipProfile;

    .line 567
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v3

    array-length v4, v3

    :goto_26
    if-ge v1, v4, :cond_8b

    aget-object v5, v3, v1

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v5, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v6}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 570
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v5, v0, :cond_6e

    .line 571
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 573
    if-eqz v0, :cond_6a

    const v0, 0x7f0e0262

    :goto_60
    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 567
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 573
    :cond_6a
    const v0, 0x7f0e0261

    goto :goto_60

    .line 577
    :cond_6e
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 578
    if-nez v0, :cond_86

    const-string v0, ""

    :goto_79
    invoke-virtual {v5, v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_7c} :catch_7d

    goto :goto_67

    .line 582
    :catch_7d
    move-exception v0

    .line 583
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v2, "Can not load pref from profile"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    :goto_85
    return-void

    .line 578
    :cond_86
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 581
    :cond_8b
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_7d

    goto :goto_85

    .line 586
    :cond_8f
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v2, "Edit a new profile"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_9c
    if-ge v0, v3, :cond_b5

    aget-object v4, v2, v0

    .line 588
    iget-object v5, v4, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 595
    iget v5, v4, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    if-eqz v5, :cond_b2

    .line 596
    iget v5, v4, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 587
    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 599
    :cond_b5
    iput-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_85
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .registers 6
    .parameter "oldProfile"
    .parameter "newProfile"

    .prologue
    .line 484
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipEditor$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/phone/sip/SipEditor$3;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 501
    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    .registers 6
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    if-nez p1, :cond_3

    .line 342
    :cond_2
    :goto_2
    return-void

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v1, p1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    .line 333
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_25

    goto :goto_2

    .line 338
    :catch_25
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 643
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 644
    .local v0, cc:[C
    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 645
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setRemovedProfileAndFinish()V
    .registers 5

    .prologue
    .line 359
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0e022a

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 366
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 367
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .registers 8
    .parameter "pref"

    .prologue
    .line 616
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 617
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v3, :cond_1f

    aget-object v2, v0, v1

    .line 618
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget v5, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 620
    iput-object p1, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 624
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4           #name:Ljava/lang/String;
    :cond_1f
    return-void

    .line 617
    .restart local v2       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4       #name:Ljava/lang/String;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private showAlert(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_1d

    .line 377
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home button clicked, don\'t show dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_1c
    return-void

    .line 380
    :cond_1d
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/phone/sip/SipEditor$2;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/sip/SipEditor$2;-><init>(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private unregisterOldPrimaryAccount()V
    .registers 5

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, primaryAccountUri:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_43

    .line 473
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 476
    :cond_43
    return-void
.end method

.method private unregisterProfile(Ljava/lang/String;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1, p1}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 356
    :goto_5
    return-void

    .line 353
    :catch_6
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private validateAndSetResult()V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 400
    .line 401
    const/4 v1, 0x0

    .line 402
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v6

    array-length v7, v6

    move v4, v3

    move v2, v5

    :goto_a
    if-ge v4, v7, :cond_78

    aget-object v8, v6, v4

    .line 403
    iget-object v0, v8, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 404
    instance-of v9, v0, Landroid/preference/EditTextPreference;

    if-eqz v9, :cond_d2

    .line 405
    check-cast v0, Landroid/preference/EditTextPreference;

    .line 406
    invoke-direct {p0, v8}, Lcom/android/phone/sip/SipEditor;->isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z

    move-result v9

    .line 407
    if-eqz v2, :cond_1f

    if-nez v9, :cond_1f

    move v2, v3

    .line 410
    :cond_1f
    if-eqz v9, :cond_53

    .line 411
    sget-object v9, Lcom/android/phone/sip/SipEditor$4;->$SwitchMap$com$android$phone$sip$SipEditor$PreferenceKey:[I

    invoke-virtual {v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_d6

    .line 423
    if-nez v1, :cond_d2

    .line 424
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    move v1, v2

    .line 402
    :goto_33
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_a

    .line 413
    :pswitch_39
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move-object v0, v1

    move v1, v2

    .line 414
    goto :goto_33

    :pswitch_43
    move-object v0, v1

    move v1, v2

    .line 418
    goto :goto_33

    .line 420
    :pswitch_46
    const v8, 0x7f0e0256

    invoke-virtual {p0, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move-object v0, v1

    move v1, v2

    .line 421
    goto :goto_33

    .line 427
    :cond_53
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v8, v0, :cond_d2

    .line 430
    :try_start_57
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_60} :catch_75

    move-result v0

    .line 434
    :goto_61
    const/16 v8, 0x3e8

    if-lt v0, v8, :cond_6a

    const v8, 0xfffe

    if-le v0, v8, :cond_d2

    .line 435
    :cond_6a
    const v0, 0x7f0e025b

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 466
    :goto_74
    return-void

    .line 431
    :catch_75
    move-exception v0

    move v0, v3

    goto :goto_61

    .line 442
    :cond_78
    if-nez v2, :cond_7e

    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v0, :cond_82

    .line 443
    :cond_7e
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_74

    .line 445
    :cond_82
    if-eqz v1, :cond_93

    .line 446
    const v0, 0x7f0e025a

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_74

    .line 450
    :cond_93
    :try_start_93
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    const-string v2, "sip_profile"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0229

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 457
    iget-object v2, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0, v2, v0}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 460
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_c5} :catch_c6

    goto :goto_74

    .line 462
    :catch_c6
    move-exception v0

    .line 463
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v2, "Can not create new SipProfile"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto :goto_74

    :cond_d2
    move-object v0, v1

    move v1, v2

    goto/16 :goto_33

    .line 411
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_39
        :pswitch_43
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 187
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v2, "start profile editor"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    .line 191
    new-instance v1, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 192
    new-instance v1, Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 196
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3a

    .line 198
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 200
    :cond_3a
    invoke-virtual {p0, v3}, Lcom/android/phone/sip/SipEditor;->setHasOptionsMenu(Z)V

    .line 201
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 266
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 267
    const/4 v0, 0x2

    const v1, 0x7f0e022c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0202c3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 269
    const/4 v0, 0x1

    const v1, 0x7f0e022b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    const v0, 0x7f0e0227

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 280
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 281
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    :cond_3d
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 206
    const v6, 0x7f040088

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 208
    .local v5, v:Landroid/view/View;
    const v6, 0x7f060035

    invoke-virtual {p0, v6}, Lcom/android/phone/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 210
    const/4 v3, 0x0

    .line 212
    .local v3, p:Landroid/net/sip/SipProfile;
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, args:Landroid/os/Bundle;
    if-nez p3, :cond_38

    .line 214
    if-eqz v0, :cond_23

    .line 215
    const-string v6, "sip_profile"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #p:Landroid/net/sip/SipProfile;
    check-cast v3, Landroid/net/sip/SipProfile;

    iput-object v3, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .line 221
    .restart local v3       #p:Landroid/net/sip/SipProfile;
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 222
    .local v4, screen:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_2c
    if-ge v1, v2, :cond_43

    .line 223
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 218
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v4           #screen:Landroid/preference/PreferenceGroup;
    :cond_38
    const-string v6, "profile"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #p:Landroid/net/sip/SipProfile;
    check-cast v3, Landroid/net/sip/SipProfile;

    iput-object v3, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .restart local v3       #p:Landroid/net/sip/SipProfile;
    goto :goto_23

    .line 226
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v4       #screen:Landroid/preference/PreferenceGroup;
    :cond_43
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/phone/sip/SipEditor;->mIsEditCase:Z

    .line 227
    if-nez v3, :cond_6c

    .line 228
    const v6, 0x7f0901ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iput-boolean v7, p0, Lcom/android/phone/sip/SipEditor;->mIsEditCase:Z

    .line 231
    const v6, 0x7f0e0242

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 246
    :cond_5a
    :goto_5a
    new-instance v6, Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-direct {v6, p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/phone/sip/SipEditor;)V

    iput-object v6, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    .line 247
    new-instance v6, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    invoke-direct {v6, p0, v3}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iput-object v6, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    .line 249
    invoke-direct {p0, v3}, Lcom/android/phone/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    .line 251
    return-object v5

    .line 233
    :cond_6c
    const v6, 0x7f090200

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    .line 235
    iget-object v6, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    const v7, 0x7f0e0227

    invoke-virtual {p0, v7}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v6, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/phone/sip/SipEditor$1;

    invoke-direct {v7, p0}, Lcom/android/phone/sip/SipEditor$1;-><init>(Lcom/android/phone/sip/SipEditor;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const-string v6, "tablet_device"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 243
    iget-object v6, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_e

    .line 327
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 324
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 325
    const/4 v0, 0x1

    goto :goto_7

    .line 322
    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 317
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 304
    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    goto :goto_c

    .line 308
    :pswitch_11
    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mDiscardClickecd:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_c

    .line 313
    :pswitch_17
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V

    goto :goto_c

    .line 302
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 256
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipEditor onPause(): removing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isRemoving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mDiscardClickecd:Z

    if-nez v0, :cond_2c

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 259
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 261
    :cond_2c
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 262
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 526
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_14

    .line 527
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    .line 528
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_14

    .line 529
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 532
    :cond_14
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_20

    .line 533
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 552
    .end local p1
    :goto_1f
    return v2

    .line 536
    .restart local p1
    :cond_20
    if-nez p2, :cond_49

    const-string v0, ""

    .line 537
    .local v0, value:Ljava/lang/String;
    :goto_24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 538
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 545
    :goto_33
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_41

    .line 546
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V

    .line 551
    :cond_41
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    goto :goto_1f

    .line 536
    .end local v0           #value:Ljava/lang/String;
    .restart local p1
    :cond_49
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 539
    .restart local v0       #value:Ljava/lang/String;
    :cond_4e
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5c

    .line 540
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 542
    :cond_5c
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 173
    instance-of v2, p2, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_16

    move-object v2, p2

    .line 174
    check-cast v2, Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 175
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_16

    .line 176
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 177
    .local v1, len:I
    if-lez v1, :cond_16

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 182
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v1           #len:I
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 288
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 289
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mIsEditCase:Z

    if-nez v0, :cond_2a

    .line 290
    :cond_19
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 297
    :goto_20
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 298
    return-void

    .line 292
    :cond_2a
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_20

    .line 295
    :cond_32
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_20
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 156
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 157
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_3f

    .line 158
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    .line 159
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    :cond_26
    :goto_26
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_3e
    return-void

    .line 162
    :cond_3f
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_26
.end method
