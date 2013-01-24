.class public Lcom/android/phone/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaOptions$1;,
        Lcom/android/phone/CdmaOptions$MyHandler;
    }
.end annotation


# instance fields
.field private homeSystemId:I

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mPrlPreferredOnly:I


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "phone"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CdmaOptions;->homeSystemId:I

    .line 61
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 62
    iput-object p2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 63
    iput-object p3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->create()V

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/CdmaOptions;->homeSystemId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/CdmaOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/phone/CdmaOptions;->homeSystemId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/CdmaOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->checkPrlPreferredOnly()V

    return-void
.end method

.method private checkPrlPreferredOnly()V
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    if-nez v0, :cond_15

    .line 196
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntries(I)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntryValues(I)V

    .line 202
    :goto_14
    return-void

    .line 199
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntries(I)V

    .line 200
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntryValues(I)V

    goto :goto_14
.end method

.method private deviceSupportsNvAndRuim()Z
    .registers 10

    .prologue
    .line 116
    const-string v7, "ril.subscription.types"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, subscriptionsSupported:Ljava/lang/String;
    const/4 v3, 0x0

    .line 118
    .local v3, nvSupported:Z
    const/4 v4, 0x0

    .line 120
    .local v4, ruimSupported:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 121
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 124
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2c
    if-ge v1, v2, :cond_49

    aget-object v5, v0, v1

    .line 125
    .local v5, subscriptionType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 126
    const-string v7, "NV"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 127
    const/4 v3, 0x1

    .line 129
    :cond_3d
    const-string v7, "RUIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 130
    const/4 v4, 0x1

    .line 124
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 135
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #subscriptionType:Ljava/lang/String;
    :cond_49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ruimSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 137
    if-eqz v3, :cond_6f

    if-eqz v4, :cond_6f

    const/4 v7, 0x1

    :goto_6e
    return v7

    :cond_6f
    const/4 v7, 0x0

    goto :goto_6e
.end method


# virtual methods
.method public cdmaSystemSelectShowDialog()V
    .registers 3

    .prologue
    .line 161
    const-string v0, "system_selection_automatic_ab_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 163
    :cond_12
    return-void
.end method

.method protected create()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 70
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "cdma_system_select_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 73
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "cdma_subscription_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    .line 76
    const-string v2, "system_selection_automatic_ab_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 77
    new-instance v2, Lcom/android/phone/CdmaOptions$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$1;)V

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    .line 78
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-virtual {v3, v0}, Lcom/android/phone/CdmaOptions$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 79
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->checkPrlPreferredOnly()V

    .line 80
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    if-eqz v2, :cond_4a

    .line 81
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_4a
    :goto_4a
    const-string v2, "cdma_subscription_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 87
    const-string v2, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 95
    :goto_62
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 97
    .local v1, voiceCapable:Z
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v0, :cond_ca

    .line 98
    .local v0, isLTE:Z
    :goto_77
    if-nez v1, :cond_7b

    if-eqz v0, :cond_88

    .line 101
    :cond_7b
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "cdma_activate_device_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_88
    const-string v2, "cdma_apn_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 106
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "button_cdma_apn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    :cond_9d
    const-string v2, "sprint_mvno_mobile_network_feature"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 109
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    if-eqz v2, :cond_b0

    .line 110
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_b0
    return-void

    .line 83
    .end local v0           #isLTE:Z
    .end local v1           #voiceCapable:Z
    :cond_b1
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    goto :goto_4a

    .line 90
    :cond_b7
    const-string v2, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "cdma_subscription_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_62

    .line 97
    .restart local v1       #voiceCapable:Z
    :cond_ca
    const/4 v0, 0x0

    goto :goto_77
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 205
    const-string v0, "CdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 142
    const-string v1, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 149
    :goto_12
    return v0

    .line 145
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 146
    const-string v1, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 149
    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 154
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 158
    :cond_12
    :goto_12
    return-void

    .line 155
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_12
.end method
