.class public Lcom/android/phone/AutomaticAcceptAlertDialog;
.super Landroid/app/Activity;
.source "AutomaticAcceptAlertDialog.java"


# instance fields
.field AcceptByVoiceCallNumber:Ljava/lang/String;

.field bld:Landroid/app/AlertDialog;

.field final mFallbackWaitingTime:J

.field myTask:Ljava/util/TimerTask;

.field res:Landroid/content/res/Resources;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->mFallbackWaitingTime:J

    .line 37
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->bld:Landroid/app/AlertDialog;

    .line 38
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->res:Landroid/content/res/Resources;

    .line 39
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    .line 40
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    .line 41
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method AcceptAlertDialogInit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 93
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setAutomaticAcceptAlertDialogInstance(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    .line 94
    iget-object v1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 96
    iget-object v1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 97
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    .line 98
    iget-object v1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->bld:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->finish()V

    .line 100
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const-string v3, "AutomaticAcceptAlertDialog"

    const-string v4, "AutomaticAcceptAlertDialog onCreate"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 49
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "AcceptByVoiceCallNumber"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    .line 50
    const-string v3, "AutomaticAcceptAlertDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AcceptByVoiceCallNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/high16 v1, 0x8

    .line 57
    .local v1, flags:I
    const/high16 v3, 0x40

    or-int/2addr v1, v3

    .line 58
    or-int/lit8 v1, v1, 0x2

    .line 59
    or-int/lit16 v1, v1, 0x80

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->res:Landroid/content/res/Resources;

    .line 63
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 64
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setAutomaticAcceptAlertDialogInstance(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    .line 65
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e04b0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->res:Landroid/content/res/Resources;

    const v5, 0x7f0e002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/AutomaticAcceptAlertDialog$1;

    invoke-direct {v5, p0}, Lcom/android/phone/AutomaticAcceptAlertDialog$1;-><init>(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->bld:Landroid/app/AlertDialog;

    .line 74
    new-instance v3, Lcom/android/phone/AutomaticAcceptAlertDialog$2;

    invoke-direct {v3, p0}, Lcom/android/phone/AutomaticAcceptAlertDialog$2;-><init>(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    .line 81
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    .line 82
    iget-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    iget-object v4, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    const-wide/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 83
    return-void
.end method
