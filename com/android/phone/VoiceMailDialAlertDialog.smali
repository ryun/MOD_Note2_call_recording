.class public Lcom/android/phone/VoiceMailDialAlertDialog;
.super Landroid/app/Activity;
.source "VoiceMailDialAlertDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field createDialog:Landroid/app/AlertDialog;

.field private vmNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    sget v2, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v2, v0, :cond_11

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_e
    sput-boolean v0, Lcom/android/phone/VoiceMailDialAlertDialog;->DBG:Z

    return-void

    :cond_11
    move v0, v1

    goto :goto_e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VoiceMailDialAlertDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/VoiceMailDialAlertDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 66
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailDialAlertDialog;->finish()V

    .line 70
    const-string v2, "VoiceMailDialAlertDialog"

    const-string v3, "Can\'t update the voicemail number from telephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v2, 0x7f0e003c

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 121
    :goto_2b
    return-void

    .line 75
    :cond_2c
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 76
    const-string v2, "+819031014170"

    iput-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    .line 79
    :cond_36
    sget-boolean v2, Lcom/android/phone/VoiceMailDialAlertDialog;->DBG:Z

    if-eqz v2, :cond_54

    const-string v2, "VoiceMailDialAlertDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currently, voice mail number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0190

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e01a6

    invoke-virtual {p0, v3}, Lcom/android/phone/VoiceMailDialAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e002a

    new-instance v4, Lcom/android/phone/VoiceMailDialAlertDialog$3;

    invoke-direct {v4, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$3;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e002e

    new-instance v4, Lcom/android/phone/VoiceMailDialAlertDialog$2;

    invoke-direct {v4, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$2;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/VoiceMailDialAlertDialog$1;

    invoke-direct {v3, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$1;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    .line 113
    iget-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/phone/VoiceMailDialAlertDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/VoiceMailDialAlertDialog$4;-><init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    iget-object v2, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2b
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailDialAlertDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    :goto_9
    return-void

    .line 129
    :cond_a
    iget-object v0, p0, Lcom/android/phone/VoiceMailDialAlertDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailDialAlertDialog;->finish()V

    goto :goto_9
.end method
