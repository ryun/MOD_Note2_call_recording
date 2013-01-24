.class public Lcom/android/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRListPreference$1;,
        Lcom/android/phone/CLIRListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private final mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private prev_CLIR_value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CLIRListPreference;->DBG:Z

    .line 42
    new-instance v0, Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    .line 52
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 53
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 56
    :goto_1f
    return-void

    .line 55
    :cond_20
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1f
.end method

.method static synthetic access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CLIRListPreference;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .registers 9
    .parameter "tmpClirArray"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 91
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 92
    aget v5, p1, v4

    if-eq v5, v4, :cond_12

    aget v5, p1, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_12

    aget v5, p1, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2c

    :cond_12
    move v0, v4

    .line 94
    .local v0, enabled:Z
    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, value:I
    aget v4, p1, v4

    packed-switch v4, :pswitch_data_46

    .line 118
    :pswitch_1c
    const/4 v2, 0x0

    .line 121
    :goto_1d
    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRListPreference;->setValueIndex(I)V

    .line 123
    iput v2, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    .line 126
    const v1, 0x7f0e0060

    .line 127
    .local v1, summary:I
    packed-switch v2, :pswitch_data_52

    .line 138
    :goto_28
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->setSummary(I)V

    .line 139
    return-void

    .end local v0           #enabled:Z
    .end local v1           #summary:I
    .end local v2           #value:I
    :cond_2c
    move v0, v3

    .line 92
    goto :goto_13

    .line 102
    .restart local v0       #enabled:Z
    .restart local v2       #value:I
    :pswitch_2e
    aget v3, p1, v3

    packed-switch v3, :pswitch_data_5c

    .line 111
    const/4 v2, 0x0

    .line 112
    goto :goto_1d

    .line 104
    :pswitch_35
    const/4 v2, 0x1

    .line 105
    goto :goto_1d

    .line 107
    :pswitch_37
    const/4 v2, 0x2

    .line 108
    goto :goto_1d

    .line 129
    .restart local v1       #summary:I
    :pswitch_39
    const v1, 0x7f0e005f

    .line 130
    goto :goto_28

    .line 132
    :pswitch_3d
    const v1, 0x7f0e005e

    .line 133
    goto :goto_28

    .line 135
    :pswitch_41
    const v1, 0x7f0e0060

    goto :goto_28

    .line 98
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
        :pswitch_2e
        :pswitch_2e
    .end packed-switch

    .line 127
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3d
        :pswitch_39
    .end packed-switch

    .line 102
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_37
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .registers 6
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v2, 0x0

    .line 80
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 81
    if-nez p2, :cond_1a

    .line 82
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1a

    .line 85
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 88
    :cond_1a
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 6
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 66
    iget v0, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 68
    const-string v0, "CLIRListPreference"

    const-string v1, "CLIR value is not changed. Do not update CLIR value"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 77
    :cond_17
    :goto_17
    return-void

    .line 72
    :cond_18
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 74
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_17

    .line 75
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_17
.end method
