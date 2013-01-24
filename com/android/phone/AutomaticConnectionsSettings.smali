.class public Lcom/android/phone/AutomaticConnectionsSettings;
.super Landroid/preference/PreferenceActivity;
.source "AutomaticConnectionsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static onBoot:Z


# instance fields
.field private mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

.field private mListView:Landroid/widget/ListView;

.field private mSprintConnectionDescription:Landroid/widget/TextView;

.field private mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

.field private mSprintConnectionOptimizer:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private ConnectionsOptimizerDialog()V
    .registers 4

    .prologue
    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e06da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e06dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e06dd

    new-instance v2, Lcom/android/phone/AutomaticConnectionsSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/AutomaticConnectionsSettings$2;-><init>(Lcom/android/phone/AutomaticConnectionsSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e06de

    new-instance v2, Lcom/android/phone/AutomaticConnectionsSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/AutomaticConnectionsSettings$1;-><init>(Lcom/android/phone/AutomaticConnectionsSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AutomaticConnectionsSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/AutomaticConnectionsSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V

    return-void
.end method

.method private automaticConnectionBroadcast(I)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "b_es_offl_enabled"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.birdstep.android.cm.B_ES_OFFL_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 178
    const-string v0, "AutomaticConnectionsSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string v2, "onCreate..."

    invoke-static {v2}, Lcom/android/phone/AutomaticConnectionsSettings;->log(Ljava/lang/String;)V

    .line 96
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/android/phone/AutomaticConnectionsSettings;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 101
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_sprint_automatic_connection_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    .line 102
    const-string v2, "sprint_connection_optimizer"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionOptimizer:Landroid/preference/PreferenceScreen;

    .line 104
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/phone/AutomaticConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04008e

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

    .line 106
    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

    const v3, 0x7f090215

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescription:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mListView:Landroid/widget/ListView;

    .line 109
    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_on_boot"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_76

    .line 112
    const-string v2, "onCreate... : on_boot"

    invoke-static {v2}, Lcom/android/phone/AutomaticConnectionsSettings;->log(Ljava/lang/String;)V

    .line 113
    sput-boolean v5, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    .line 114
    invoke-direct {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_on_boot"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    :cond_75
    :goto_75
    return-void

    .line 116
    :cond_76
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_settings"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_75

    .line 117
    const-string v2, "onCreate... : on_setting"

    invoke-static {v2}, Lcom/android/phone/AutomaticConnectionsSettings;->log(Ljava/lang/String;)V

    .line 118
    sput-boolean v4, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    .line 119
    invoke-direct {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V

    goto :goto_75
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2b

    .line 74
    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_23

    .line 76
    invoke-direct {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V

    .line 77
    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    :goto_22
    return v0

    .line 79
    :cond_23
    invoke-direct {p0, v0}, Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V

    goto :goto_22

    .line 82
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V

    goto :goto_22

    :cond_2b
    move v0, v1

    .line 86
    goto :goto_22
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "b_es_offl_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_1e

    .line 132
    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    :goto_1d
    return-void

    .line 134
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1d
.end method
