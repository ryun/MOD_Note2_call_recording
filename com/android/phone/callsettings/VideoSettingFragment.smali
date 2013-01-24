.class public Lcom/android/phone/callsettings/VideoSettingFragment;
.super Lcom/android/phone/CallFeaturesSetting;
.source "VideoSettingFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeSettings()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->initGeneralSetting(Z)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->initVideoSetting(Z)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->initVoicemailSetting(Z)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->initVoipSetting(Z)V

    .line 37
    return-void
.end method
