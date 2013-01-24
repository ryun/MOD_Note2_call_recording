.class public Lcom/android/phone/RoamingAutoDialOption;
.super Lcom/android/internal/app/AlertActivity;
.source "RoamingAutoDialOption.java"


# instance fields
.field final app:Lcom/android/phone/PhoneApp;

.field private callType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 36
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialOption;->app:Lcom/android/phone/PhoneApp;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RoamingAutoDialOption;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/phone/RoamingAutoDialOption;->callType:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.phone.extra.calltype"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/RoamingAutoDialOption;->callType:I

    .line 45
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 46
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f0e039e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 48
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 49
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0e039f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 50
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v4, 0x7f0e03a0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 52
    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 53
    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$1;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$2;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$2;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->setupAlert()V

    .line 80
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->finish()V

    .line 85
    return-void
.end method
