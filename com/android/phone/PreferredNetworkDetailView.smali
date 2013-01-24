.class public Lcom/android/phone/PreferredNetworkDetailView;
.super Landroid/preference/PreferenceActivity;
.source "PreferredNetworkDetailView.java"


# instance fields
.field private actionType:I

.field final app:Lcom/android/phone/PhoneApp;

.field editDialog:Landroid/widget/EditText;

.field mGsmAct:Landroid/preference/CheckBoxPreference;

.field mGsmCompactAct:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field mNetworkId:Landroid/preference/Preference;

.field mNetworkIndex:Landroid/preference/Preference;

.field mNetworkName:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUtranAct:Landroid/preference/CheckBoxPreference;

.field private oldId:Ljava/lang/String;

.field private oldIndex:I

.field private oldName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 133
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneApp;

    .line 139
    new-instance v0, Lcom/android/phone/PreferredNetworkDetailView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworkDetailView$1;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredNetworkDetailView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    return v0
.end method

.method private savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 18
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "action"

    .prologue
    .line 462
    const-string v1, "PreferredNetworksDetailView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePreferredNetworkInfo Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Operator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PLMN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GSM ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GSM Compact ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Utran ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V

    .line 478
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 166
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const v1, 0x7f040068

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->addPreferencesFromResource(I)V

    .line 172
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 176
    const-string v1, "network_index"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    .line 178
    const-string v1, "network_name"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    .line 180
    const-string v1, "network_id"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    .line 182
    const-string v1, "gsm_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    .line 184
    const-string v1, "gsm_compact_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    .line 186
    const-string v1, "utran_act"

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    .line 190
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$2;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$2;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$3;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$3;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$4;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$4;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$5;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$5;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$6;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$6;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 272
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$7;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$7;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, i:Landroid/content/Intent;
    const-string v1, "type_action"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    .line 293
    const-string v1, "index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    .line 295
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v1, :cond_a8

    .line 297
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 299
    :cond_a8
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v1, :cond_b8

    .line 301
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 303
    :cond_b8
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    const-string v1, "act_gsm"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_111

    .line 313
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06b0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 315
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    :goto_e6
    const-string v1, "act_gsm_compact"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_11f

    .line 328
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06b3

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 330
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    :goto_fb
    const-string v1, "act_utran"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_12d

    .line 344
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06b6

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 346
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 356
    :goto_110
    return-void

    .line 318
    :cond_111
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06af

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 320
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_e6

    .line 334
    :cond_11f
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06b2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 336
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_fb

    .line 350
    :cond_12d
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06b5

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 352
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_110
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const v9, 0x7f0e0087

    .line 366
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 368
    .local v2, mContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 370
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04006a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    .local v1, mBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 376
    const v5, 0x7f0901b9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    .line 377
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 379
    packed-switch p1, :pswitch_data_a0

    .line 452
    :goto_33
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 454
    .local v3, mDialog:Landroid/app/Dialog;
    return-object v3

    .line 383
    .end local v3           #mDialog:Landroid/app/Dialog;
    :pswitch_38
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const v5, 0x7f0e06aa

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$8;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$8;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_33

    .line 403
    :pswitch_53
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    const v5, 0x7f0e06ab

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$9;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$9;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_33

    .line 423
    :pswitch_6e
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 426
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$10;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$10;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    const v5, 0x7f0e06ac

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 434
    const v5, 0x7f0e06b7

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 435
    new-instance v5, Lcom/android/phone/PreferredNetworkDetailView$11;

    invoke-direct {v5, p0}, Lcom/android/phone/PreferredNetworkDetailView$11;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_33

    .line 379
    :pswitch_data_a0
    .packed-switch 0x64
        :pswitch_38
        :pswitch_53
        :pswitch_6e
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 488
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 490
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 502
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_160

    .line 591
    :goto_12
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    :goto_16
    return v9

    .line 508
    :sswitch_17
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_DELETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_53

    move v4, v9

    :goto_2b
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_55

    move v5, v9

    :goto_34
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_57

    move v6, v9

    :goto_3d
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 522
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06be

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    goto :goto_16

    :cond_53
    move v4, v10

    .line 510
    goto :goto_2b

    :cond_55
    move v5, v10

    goto :goto_34

    :cond_57
    move v6, v10

    goto :goto_3d

    .line 530
    :sswitch_59
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_SAVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "PreferredNetworksDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 534
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06b8

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 538
    :cond_a3
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 539
    .local v8, length:I
    const/4 v0, 0x5

    if-lt v8, v0, :cond_b7

    const/4 v0, 0x6

    if-le v8, v0, :cond_ca

    .line 540
    :cond_b7
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    .line 541
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06bf

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 547
    :cond_ca
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    if-eq v0, v9, :cond_f1

    .line 548
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_147

    move v4, v9

    :goto_db
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_149

    move v5, v9

    :goto_e4
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14b

    move v6, v9

    :goto_ed
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 559
    :cond_f1
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14d

    move v4, v9

    :goto_11c
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14f

    move v5, v9

    :goto_125
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_151

    move v6, v9

    :goto_12e
    iget v7, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 573
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    .line 575
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06bd

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_16

    :cond_147
    move v4, v10

    .line 548
    goto :goto_db

    :cond_149
    move v5, v10

    goto :goto_e4

    :cond_14b
    move v6, v10

    goto :goto_ed

    :cond_14d
    move v4, v10

    .line 559
    goto :goto_11c

    :cond_14f
    move v5, v10

    goto :goto_125

    :cond_151
    move v6, v10

    goto :goto_12e

    .line 581
    .end local v8           #length:I
    :sswitch_153
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_DISCARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    goto/16 :goto_16

    .line 504
    nop

    :sswitch_data_160
    .sparse-switch
        0x7f090173 -> :sswitch_17
        0x7f09029c -> :sswitch_59
        0x7f09029d -> :sswitch_153
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 603
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 605
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 613
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 615
    return-void
.end method
