.class public Lcom/android/phone/RcsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-class v0, Lcom/android/phone/RcsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 86
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    iput-object p1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 90
    :cond_10
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 150
    sget-object v1, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createIntentFilter()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "com.samsung.rcs.framework.instantmessaging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 173
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 175
    const-string v1, "com.samsung.rcs.framework.filetransfer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.samsung.rcs.framework.filetransfer.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 179
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const v5, 0x7f090134

    const v4, 0x7f090133

    .line 111
    sget-object v1, Lcom/android/phone/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 115
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const v2, 0x7f090131

    invoke-interface {v1, v2}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(I)V

    .line 147
    :cond_32
    :goto_32
    return-void

    .line 116
    :cond_33
    const-string v1, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 117
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v5}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(I)V

    goto :goto_32

    .line 118
    :cond_41
    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 119
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v5}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(I)V

    goto :goto_32

    .line 120
    :cond_4f
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 121
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v4}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(I)V

    goto :goto_32

    .line 122
    :cond_5d
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 123
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v4}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(I)V

    goto :goto_32

    .line 124
    :cond_6b
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 125
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/os/Bundle;)V

    goto :goto_32

    .line 126
    :cond_7e
    const-string v1, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 134
    :cond_b6
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v0}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsMenuOption(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 135
    :cond_bd
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 136
    :cond_cd
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, p2}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleIncommingIMandFT(Landroid/content/Intent;)V

    goto/16 :goto_32

    .line 137
    :cond_d4
    const-string v1, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    const-string v1, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 140
    :cond_ec
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v0}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleRcsExtraAction(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 141
    :cond_f3
    const-string v1, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 142
    iget-object v1, p0, Lcom/android/phone/RcsBroadcastReceiver;->mHandler:Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, p2}, Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;->handleCshInfo(Landroid/content/Intent;)V

    goto/16 :goto_32
.end method

.method public register(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_e

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 95
    invoke-static {}, Lcom/android/phone/RcsBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    :cond_e
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    if-eqz v0, :cond_a

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RcsBroadcastReceiver;->mRegistered:Z

    .line 102
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    :cond_a
    return-void
.end method
