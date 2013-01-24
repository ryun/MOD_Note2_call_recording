.class public Lcom/android/phone/EmergencyCallbackMode;
.super Landroid/app/Activity;
.source "EmergencyCallbackMode.java"

# interfaces
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$2;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->emergencyCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyCallbackMode;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    return-void
.end method

.method private emergencyCall()V
    .registers 4

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    const-string v2, "tel:911"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 150
    return-void
.end method

.method private updateKeyguardPolicy(Z)V
    .registers 5
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v2, 0x40

    const/high16 v1, 0x8

    .line 136
    if-eqz p1, :cond_15

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 143
    :goto_14
    return-void

    .line 140
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_14
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f04002a

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackMode;->setContentView(I)V

    .line 50
    const v2, 0x7f0900bf

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 51
    .local v1, mEmergencyCallButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/phone/EmergencyCallbackMode$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyCallbackMode$1;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v2, 0x7f0900c0

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    .line 59
    .local v0, emergencyCallbackWidget:Lcom/android/phone/IncomingCallWidget;
    const v2, 0x7f0e044d

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setLeftHintText(I)V

    .line 60
    const v2, 0x7f0e044c

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setRightHintText(I)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 63
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 120
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_e

    .line 93
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 89
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->emergencyCall()V

    .line 90
    const/4 v0, 0x1

    goto :goto_7

    .line 87
    nop

    :pswitch_data_e
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    const-string v0, "wifi_diable_during_emergency_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->enableWifiAfterEmergencyCall()V

    .line 82
    :cond_17
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyCallbackMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 73
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 123
    packed-switch p2, :pswitch_data_14

    .line 133
    :goto_3
    return-void

    .line 125
    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    goto :goto_3

    .line 130
    :pswitch_c
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    goto :goto_3

    .line 123
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 103
    return-void
.end method
