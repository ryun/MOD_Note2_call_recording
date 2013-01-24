.class public Lcom/android/phone/GsmUmtsCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "GsmUmtsCallOptions.java"


# instance fields
.field private final DBG:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->DBG:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsCallOptions;->addPreferencesFromResource(I)V

    .line 37
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 41
    :cond_1c
    return-void
.end method
