.class public Lcom/android/phone/FlatRateAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field protected static mCheckBox:Landroid/widget/CheckBox;

.field protected static mRadioGroup:Landroid/widget/RadioGroup;


# instance fields
.field private mContext:Landroid/content/Context;

.field private radioOption1:Landroid/widget/RadioButton;

.field private salesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    .line 49
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->salesCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FlatRateAlertActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/FlatRateAlertActivity;)Landroid/widget/RadioButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04003b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, view:Landroid/view/View;
    const v3, 0x7f09011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, mMessageText:Landroid/widget/TextView;
    const-string v3, "bootup_data_tariff_rate_popup"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 79
    const v3, 0x7f0e04dd

    invoke-virtual {p0, v3}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v3, 0x7f09011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    sput-object v3, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 81
    const v3, 0x7f090120

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    .line 82
    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 83
    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 96
    :goto_49
    const v3, 0x7f090122

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 98
    .local v1, okButton:Landroid/widget/Button;
    new-instance v3, Lcom/android/phone/FlatRateAlertActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/FlatRateAlertActivity$1;-><init>(Lcom/android/phone/FlatRateAlertActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-object v2

    .line 84
    .end local v1           #okButton:Landroid/widget/Button;
    :cond_5b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DefaultDataStateFalse"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 85
    const v3, 0x7f0e04df

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0e04e0

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/FlatRateAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 90
    :cond_7d
    const v3, 0x7f0e04d9

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0e04da

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/FlatRateAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v3, 0x7f09011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    sput-object v3, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 92
    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 93
    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_49
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3
    .parameter "arg0"
    .parameter "checkedId"

    .prologue
    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 58
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 60
    const-string v1, "bootup_data_tariff_rate_popup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 61
    const v1, 0x7f0e04dc

    invoke-virtual {p0, v1}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    :goto_21
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 69
    invoke-direct {p0}, Lcom/android/phone/FlatRateAlertActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->setupAlert()V

    .line 72
    return-void

    .line 62
    :cond_2e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DefaultDataStateFalse"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 63
    const v1, 0x7f0e04de

    invoke-virtual {p0, v1}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_21

    .line 65
    :cond_44
    const v1, 0x7f0e04d8

    invoke-virtual {p0, v1}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_21
.end method
