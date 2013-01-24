.class public Lcom/android/phone/LGTNetworkAutoRebootPopup;
.super Lcom/android/internal/app/AlertActivity;
.source "LGTNetworkAutoRebootPopup.java"


# instance fields
.field final app:Lcom/android/phone/PhoneApp;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 41
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->app:Lcom/android/phone/PhoneApp;

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 7
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 89
    :goto_a
    return v1

    .line 86
    :catch_b
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LGTNetworkAutoRebootPopup "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "LGTNetworkAutoRebootPopup "

    const-string v4, " show LGTNetworkAutoRebootPopup !! "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mWindowManager:Landroid/view/IWindowManager;

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_auto_setting"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    const-string v3, "LGTNetworkAutoRebootPopup "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " roaming_auto_setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roaming_auto_setting"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v3, 0x1a

    invoke-direct {p0, v3, v8}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    .line 57
    const/4 v3, 0x3

    invoke-direct {p0, v3, v8}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    .line 59
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 60
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 61
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f0e059b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 63
    const v3, 0x7f0e05ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 65
    const v3, 0x7f0e05bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 66
    new-instance v3, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;

    invoke-direct {v3, p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;-><init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->setupAlert()V

    .line 81
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x4

    .line 96
    if-eq p1, v0, :cond_5

    if-ne p1, v0, :cond_1f

    .line 97
    :cond_5
    const-string v0, "LGTNetworkAutoRebootPopup "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_1e
    return v0

    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1e
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 108
    return-void
.end method
