.class public Lcom/android/phone/callsettings/PowerKeyEndPreference;
.super Landroid/preference/CheckBoxPreference;
.source "PowerKeyEndPreference.java"


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSumary()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSumary()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/PowerKeyEndPreference;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkProximitySeonsor(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->isChecked()Z

    move-result v1

    .line 62
    .local v1, isChecked:Z
    iput-object p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    .line 64
    if-eqz v1, :cond_8a

    .line 65
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "proximity_sensor"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, currntProximitySensor:I
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    if-nez v0, :cond_76

    .line 71
    iput-boolean v4, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    .line 72
    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    .line 73
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 74
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02cc

    new-instance v4, Lcom/android/phone/callsettings/PowerKeyEndPreference$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$3;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e02cd

    new-instance v4, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 131
    .end local v0           #currntProximitySensor:I
    :goto_75
    return-void

    .line 114
    .restart local v0       #currntProximitySensor:I
    :cond_76
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iput-boolean v5, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    .line 120
    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto :goto_75

    .line 123
    .end local v0           #currntProximitySensor:I
    :cond_8a
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    iput-boolean v4, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    .line 129
    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto :goto_75
.end method

.method public setSumary()V
    .registers 2

    .prologue
    .line 48
    const-string v0, "powey_key_ends_call_during_screen_off"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    const v0, 0x7f0e02fa

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSummary(I)V

    .line 53
    :goto_e
    return-void

    .line 51
    :cond_f
    const v0, 0x7f0e02f9

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSummary(I)V

    goto :goto_e
.end method
