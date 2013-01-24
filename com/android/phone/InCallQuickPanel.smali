.class public Lcom/android/phone/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# static fields
.field private static final mQuickPanelReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPhoneApp:Lcom/android/phone/PhoneApp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/phone/InCallQuickPanel$1;

    invoke-direct {v0}, Lcom/android/phone/InCallQuickPanel$1;-><init>()V

    sput-object v0, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 125
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 126
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->initInCallQuickPanel()V

    .line 128
    return-void
.end method

.method private getCallBaseTime()J
    .registers 7

    .prologue
    .line 266
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 267
    .local v3, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 269
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_19

    .line 270
    move-object v3, v0

    .line 273
    :cond_19
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 274
    :cond_25
    const-wide/16 v4, -0x1

    .line 278
    :goto_27
    return-wide v4

    .line 277
    :cond_28
    invoke-static {v3}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    .line 278
    .local v1, duration:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_27
.end method

.method private initInCallQuickPanel()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 132
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SHOW_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 134
    .local v0, PI:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.MUTE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 136
    .local v1, PI2:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.SPEAKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 138
    .local v2, PI3:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.UNHOLD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 140
    .local v3, PI4:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.phone.END"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 143
    .local v4, PI5:Landroid/app/PendingIntent;
    const v5, 0x7f0901c1

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    const v5, 0x7f0901c2

    invoke-virtual {p0, v5, v0}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 146
    const v5, 0x7f0901c5

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 147
    const v5, 0x7f0901c6

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 149
    const v5, 0x7f0901c9

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 150
    const v5, 0x7f0901ca

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 152
    const v5, 0x7f0901c3

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    const v5, 0x7f0901cc

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 154
    return-void
.end method

.method public static registerQuickPanelReceiver()V
    .registers 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.phone.SHOW_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "com.android.phone.MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "com.android.phone.SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "com.android.phone.UNHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "com.android.phone.END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallQuickPanel;->mQuickPanelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method


# virtual methods
.method public updateInCallQuickPanel()V
    .registers 12

    .prologue
    const v10, 0x7f0901c9

    const v9, 0x7f0901c6

    const v4, 0x7f0901c5

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 157
    const-wide/high16 v2, -0x8000

    .line 160
    .local v2, callDurationBaseTime:J
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 161
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 162
    const v0, 0x7f0901c1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 168
    :goto_22
    const/4 v8, 0x0

    .line 170
    .local v8, notMuteCase:Z
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_be

    .line 172
    const v0, 0x7f0901c3

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 173
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 174
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 197
    :goto_55
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_124

    .line 198
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 199
    invoke-virtual {p0, v4, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 200
    invoke-virtual {p0, v9, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 222
    :goto_69
    const-string v0, "speaker_bt_button_disable_with_headset_plug"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 224
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 225
    invoke-virtual {p0, v10, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 226
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 227
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 249
    :goto_88
    invoke-direct {p0}, Lcom/android/phone/InCallQuickPanel;->getCallBaseTime()J

    move-result-wide v2

    .line 250
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-lez v0, :cond_19d

    .line 251
    const v0, 0x7f0901ce

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 252
    const v1, 0x7f0901ce

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 258
    :goto_a1
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_af

    .line 261
    const v0, 0x7f0901cd

    invoke-virtual {p0, v0, v7}, Lcom/android/phone/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 263
    :cond_af
    return-void

    .line 164
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #notMuteCase:Z
    :cond_b0
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 165
    const v0, 0x7f0901c1

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_22

    .line 176
    .restart local v8       #notMuteCase:Z
    :cond_be
    const v0, 0x7f0901c3

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 178
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_ea

    if-eqz v6, :cond_10b

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    :cond_ea
    const/4 v8, 0x1

    .line 180
    :goto_eb
    if-eqz v8, :cond_10d

    .line 181
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 182
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 189
    :cond_fb
    :goto_fb
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 190
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_55

    :cond_10b
    move v8, v5

    .line 178
    goto :goto_eb

    .line 185
    :cond_10d
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_fb

    .line 192
    :cond_114
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_55

    .line 202
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    :cond_11c
    invoke-virtual {p0, v4, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 203
    invoke-virtual {p0, v9, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_69

    .line 206
    :cond_124
    if-eqz v8, :cond_134

    .line 207
    invoke-virtual {p0, v4, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 208
    invoke-virtual {p0, v9, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 209
    const v0, 0x7f0901c7

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_69

    .line 211
    :cond_134
    const v0, 0x7f0901c7

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 212
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_148

    .line 213
    invoke-virtual {p0, v4, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 214
    invoke-virtual {p0, v9, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_69

    .line 216
    :cond_148
    invoke-virtual {p0, v4, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 217
    invoke-virtual {p0, v9, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_69

    .line 228
    :cond_150
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_169

    .line 229
    invoke-virtual {p0, v10, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 230
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 231
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_88

    .line 233
    :cond_169
    invoke-virtual {p0, v10, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 234
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 235
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_88

    .line 239
    :cond_17a
    iget-object v0, p0, Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_193

    .line 240
    invoke-virtual {p0, v10, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 241
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 246
    :goto_18b
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_88

    .line 243
    :cond_193
    invoke-virtual {p0, v10, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 244
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0, v5}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    goto :goto_18b

    .line 254
    :cond_19d
    const v0, 0x7f0901ce

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCallQuickPanel;->setViewVisibility(II)V

    .line 255
    const v1, 0x7f0901ce

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_a1
.end method
