.class public Lcom/android/phone/LGTRoamingDualClockSetting;
.super Landroid/preference/PreferenceActivity;
.source "LGTRoamingDualClockSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;
    }
.end annotation


# static fields
.field private static mSelect:I


# instance fields
.field private dualclock_manual_select:Landroid/preference/PreferenceScreen;

.field final handler:Landroid/os/Handler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

.field private use_dualclock:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 130
    new-instance v0, Lcom/android/phone/LGTRoamingDualClockSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTRoamingDualClockSetting$1;-><init>(Lcom/android/phone/LGTRoamingDualClockSetting;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->handler:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method private getSelectedMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_dual_clock_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 107
    const/4 v0, 0x1

    .line 109
    :cond_e
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTRoamingDualClockSetting;->addPreferencesFromResource(I)V

    .line 48
    const-string v0, "use_dualclock_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTRoamingDualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    .line 49
    const-string v0, "dualclock_manual_select_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTRoamingDualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->dualclock_manual_select:Landroid/preference/PreferenceScreen;

    .line 51
    sget v0, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    packed-switch v0, :pswitch_data_30

    .line 57
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    :goto_28
    return-void

    .line 53
    :pswitch_29
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_28

    .line 51
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 113
    packed-switch p1, :pswitch_data_44

    .line 126
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 116
    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 117
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e05e5

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTRoamingDualClockSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 121
    new-instance v0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    iget-object v1, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;-><init>(Lcom/android/phone/LGTRoamingDualClockSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    .line 122
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    invoke-virtual {v0}, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->start()V

    .line 124
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_5

    .line 113
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 66
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 67
    sput v5, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 69
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 70
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_dual_clock_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    const v6, 0x7f0e05da

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 93
    .end local v1           #cr:Landroid/content/ContentResolver;
    :goto_30
    return v4

    .line 74
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_31
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_dual_clock_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    const v6, 0x7f0e05db

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_30

    .line 79
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_4a
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->dualclock_manual_select:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 80
    const/4 v5, 0x2

    sput v5, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    .line 82
    const-string v0, "com.android.settings.DateTimeSettings"

    .line 83
    .local v0, clazz:Ljava/lang/String;
    const-string v3, "com.android.settings"

    .line 84
    .local v3, pkg:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.DateTimeSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/phone/LGTRoamingDualClockSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_30

    .end local v0           #clazz:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pkg:Ljava/lang/String;
    :cond_70
    move v4, v5

    .line 93
    goto :goto_30
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getSelectedMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    return-void
.end method
