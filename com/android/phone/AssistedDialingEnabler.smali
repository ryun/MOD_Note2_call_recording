.class public Lcom/android/phone/AssistedDialingEnabler;
.super Ljava/lang/Object;
.source "AssistedDialingEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .registers 6
    .parameter "context"
    .parameter "switchpreference"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "AssistedDialingEnabler"

    const-string v1, "AssistedDialingEnabler (switchpreference)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 41
    const-string v0, "AssistedDialingEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAssistedDialingOn (switchpreference) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/AssistedDialingEnabler;->isAssistedDialingOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/AssistedDialingEnabler;->isAssistedDialingOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .registers 6
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "AssistedDialingEnabler"

    const-string v1, "AssistedDialingEnabler (switch_)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    const-string v0, "AssistedDialingEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAssistedDialingOn (switch_) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/AssistedDialingEnabler;->isAssistedDialingOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/AssistedDialingEnabler;->isAssistedDialingOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 51
    return-void
.end method

.method public static isAssistedDialingOn(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, mDefaultSettingValue:I
    const-string v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 87
    const/4 v0, 0x1

    .line 89
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 79
    const-string v0, "AssistedDialingEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing"

    if-eqz p2, :cond_27

    const/4 v0, 0x1

    :goto_23
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    return-void

    .line 80
    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    const-string v3, "AssistedDialingEnabler"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 101
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_18

    .line 107
    :goto_17
    return v1

    .line 104
    :cond_18
    iget-object v3, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 105
    iget-object v3, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing"

    if-eqz v0, :cond_2c

    :goto_27
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v2

    .line 107
    goto :goto_17

    :cond_2c
    move v1, v2

    .line 105
    goto :goto_27
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "AssistedDialingEnabler"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    :cond_11
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    :cond_1a
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 62
    const-string v0, "AssistedDialingEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_10

    .line 64
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    :cond_10
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_24

    .line 67
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/phone/AssistedDialingEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/AssistedDialingEnabler;->isAssistedDialingOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 70
    :cond_24
    return-void
.end method
