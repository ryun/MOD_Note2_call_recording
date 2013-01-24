.class public Lcom/android/phone/CallForwardAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CallForwardAppWidgetProvider.java"

# interfaces
.implements Lcom/android/phone/CallForwardingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardAppWidgetProvider$1;,
        Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field static callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field static cfListener:Lcom/android/phone/CallForwardingListener;

.field static mIsReading:Z

.field static mIsVideoOn:Lcom/android/phone/CFStatus;

.field static mIsVoiceOn:Lcom/android/phone/CFStatus;

.field static mLastRequestType:Lcom/android/phone/CFType;

.field static mScreenMode:I

.field static mVideoNumber:Ljava/lang/String;

.field static mVoiceNumber:Ljava/lang/String;

.field static phone:Lcom/android/internal/telephony/Phone;


# instance fields
.field context:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 83
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallForwardAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 102
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 103
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 106
    sput-boolean v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 109
    sput v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 93
    new-instance v0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;-><init>(Lcom/android/phone/CallForwardAppWidgetProvider;Lcom/android/phone/CallForwardAppWidgetProvider$1;)V

    iput-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    .line 461
    return-void
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 8
    .parameter "type"
    .parameter "cf"

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0e0335

    .line 222
    sput-object p2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 223
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "handleGetCFResponse done: "

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 224
    const-string v0, "CallForwardAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callForwardInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_74

    .line 227
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_67

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_67

    .line 228
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v4, :cond_62

    .line 229
    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 233
    :goto_45
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 251
    :cond_4b
    :goto_4b
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    if-nez v0, :cond_ab

    .line 252
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 253
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 258
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 259
    return-void

    .line 231
    :cond_62
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    goto :goto_45

    .line 235
    :cond_67
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 236
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    goto :goto_4b

    .line 238
    :cond_74
    sget-object v0, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_4b

    .line 239
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_9e

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9e

    .line 240
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v4, :cond_99

    .line 241
    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 245
    :goto_92
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_4b

    .line 243
    :cond_99
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    goto :goto_92

    .line 247
    :cond_9e
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 248
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_4b

    .line 254
    :cond_ab
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    if-nez v0, :cond_5b

    .line 255
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 256
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_5b
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 124
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 131
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    .line 133
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 139
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 143
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    .line 144
    sput-object p0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    .line 147
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 152
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_2d

    .line 153
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v1, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    .line 155
    :cond_2d
    return-void
.end method

.method public onError(I)V
    .registers 4
    .parameter "error"

    .prologue
    .line 448
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 449
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 450
    return-void
.end method

.method public onException(Lcom/android/internal/telephony/CommandException;)V
    .registers 4
    .parameter "exception"

    .prologue
    .line 453
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 454
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 455
    return-void
.end method

.method public onFinished(Z)V
    .registers 3
    .parameter "reading"

    .prologue
    .line 441
    sput-boolean p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 442
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 445
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 162
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 165
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, intentAction:Ljava/lang/String;
    const-string v0, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 170
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VOICE_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_2f

    move v1, v2

    .line 175
    .local v1, action:I
    :cond_2f
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 182
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_48

    .line 183
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    .line 219
    .end local v1           #action:I
    :cond_48
    :goto_48
    return-void

    .line 185
    :cond_49
    const-string v0, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 186
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VIDEO_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_5f

    move v1, v2

    .line 191
    .restart local v1       #action:I
    :cond_5f
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    const/16 v5, 0x10

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 199
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_48

    .line 200
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_48

    .line 202
    .end local v1           #action:I
    :cond_7b
    const-string v0, "com.android.phone.cfwidget.widget_reload_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 203
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_RELOAD_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v2, v4}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 211
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_48

    .line 212
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v2, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v2, v6}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_48

    .line 214
    :cond_a2
    const-string v0, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 215
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_BACK_SCREEN_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sput v2, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 217
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto :goto_48
.end method

.method public onStarted(Lcom/android/phone/CFType;Z)V
    .registers 5
    .parameter "type"
    .parameter "reading"

    .prologue
    .line 434
    sput-boolean p2, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 435
    sput-object p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    .line 436
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 437
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 438
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 114
    const-string v1, "CallForwardAppWidgetProvider"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    array-length v0, p3

    .line 117
    .local v0, N:I
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 118
    return-void
.end method

.method updateToggleButton(Landroid/widget/RemoteViews;)V
    .registers 9
    .parameter "views"

    .prologue
    const v6, 0x7f09005c

    const v5, 0x7f09005b

    const v2, 0x7f09005a

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 400
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_66

    .line 401
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 402
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 404
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 405
    const v0, 0x7f09005e

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 406
    const v0, 0x7f09005f

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 416
    :goto_34
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_89

    .line 417
    const v0, 0x7f090062

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 418
    const v0, 0x7f090063

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 420
    const v0, 0x7f090064

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 421
    const v0, 0x7f090066

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 422
    const v0, 0x7f090067

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 431
    :goto_65
    return-void

    .line 408
    :cond_66
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 409
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 411
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 412
    const v0, 0x7f09005f

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 413
    const v0, 0x7f09005e

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_34

    .line 424
    :cond_89
    const v0, 0x7f090062

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 425
    const v0, 0x7f090063

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 427
    const v0, 0x7f090064

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 428
    const v0, 0x7f090066

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 429
    const v0, 0x7f090067

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_65
.end method

.method updateView(Landroid/content/Context;I)V
    .registers 25
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 263
    new-instance v16, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f040014

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 266
    .local v16, views:Landroid/widget/RemoteViews;
    new-instance v13, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v13, settingIntent:Landroid/content/Intent;
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    const-string v19, "com.android.phone"

    const-string v20, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 270
    .local v9, pendingSettingIntent:Landroid/app/PendingIntent;
    const v19, 0x7f090057

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 273
    const/16 v19, 0x0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 276
    .local v17, voiceCfOnOff:Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v12, setVoiceNumberIntent:Landroid/content/Intent;
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    const-string v19, "com.android.phone"

    const-string v20, "com.android.phone.GsmUmtsCallForwardOptionsFromWidget"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v19, "FROMWIDGET"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 282
    .local v8, pendingSetVoiceNumberIntent:Landroid/app/PendingIntent;
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v20, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_118

    .line 283
    const v19, 0x7f090059

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 289
    :goto_a4
    const/16 v19, 0x0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 292
    .local v15, videoCfOnOff:Landroid/app/PendingIntent;
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v11, setVideoNumberIntent:Landroid/content/Intent;
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    const-string v19, "com.android.phone"

    const-string v20, "com.android.phone.GsmUmtsVideoCallForwardOptionsFromWidget"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v19, "FROMWIDGET"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 298
    .local v7, pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v20, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_125

    .line 299
    const v19, 0x7f090061

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 305
    :goto_103
    sget v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    packed-switch v19, :pswitch_data_2f6

    .line 393
    :goto_108
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v18

    .line 394
    .local v18, wm:Landroid/appwidget/AppWidgetManager;
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 396
    return-void

    .line 285
    .end local v7           #pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    .end local v11           #setVideoNumberIntent:Landroid/content/Intent;
    .end local v15           #videoCfOnOff:Landroid/app/PendingIntent;
    .end local v18           #wm:Landroid/appwidget/AppWidgetManager;
    :cond_118
    const v19, 0x7f090059

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_a4

    .line 301
    .restart local v7       #pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    .restart local v11       #setVideoNumberIntent:Landroid/content/Intent;
    .restart local v15       #videoCfOnOff:Landroid/app/PendingIntent;
    :cond_125
    const v19, 0x7f090061

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_103

    .line 307
    :pswitch_130
    const v19, 0x7f090058

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 308
    const v19, 0x7f090068

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 309
    const v19, 0x7f09005d

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 310
    const v19, 0x7f090065

    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 312
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateToggleButton(Landroid/widget/RemoteViews;)V

    goto :goto_108

    .line 315
    :pswitch_170
    const v19, 0x7f090058

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 316
    const v19, 0x7f090068

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 317
    const v19, 0x7f090069

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 318
    const v19, 0x7f09006c

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    const v19, 0x7f09006e

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 321
    const v19, 0x7f0e0080

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, dialogText:Ljava/lang/String;
    sget-boolean v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-nez v19, :cond_1e4

    .line 353
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v20, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_206

    .line 354
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v20, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1f0

    .line 355
    const v19, 0x7f0e0337

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 367
    :cond_1e4
    :goto_1e4
    const v19, 0x7f09006b

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_108

    .line 356
    :cond_1f0
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v20, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e4

    .line 357
    const v19, 0x7f0e0336

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1e4

    .line 359
    :cond_206
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v20, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e4

    .line 360
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v20, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_226

    .line 361
    const v19, 0x7f0e0339

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1e4

    .line 362
    :cond_226
    sget-object v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v20, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e4

    .line 363
    const v19, 0x7f0e0338

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1e4

    .line 371
    .end local v5           #dialogText:Ljava/lang/String;
    :pswitch_23c
    const v19, 0x7f090058

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 372
    const v19, 0x7f090068

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 373
    const v19, 0x7f090069

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 374
    const v19, 0x7f09006c

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 376
    sget-boolean v19, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-eqz v19, :cond_2be

    .line 377
    const v19, 0x7f0e033a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 378
    .local v14, tryAgain:Ljava/lang/String;
    const v19, 0x7f09006e

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 380
    const/16 v19, 0x0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 381
    .local v10, reloadCf:Landroid/app/PendingIntent;
    const v19, 0x7f09006e

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 389
    .end local v10           #reloadCf:Landroid/app/PendingIntent;
    .end local v14           #tryAgain:Ljava/lang/String;
    :goto_2ae
    const v19, 0x7f09006e

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_108

    .line 383
    :cond_2be
    const v19, 0x7f0e0087

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, ok:Ljava/lang/String;
    const v19, 0x7f09006e

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 386
    const/16 v19, 0x0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 387
    .local v4, backScreen:Landroid/app/PendingIntent;
    const v19, 0x7f09006e

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2ae

    .line 305
    nop

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_130
        :pswitch_170
        :pswitch_23c
    .end packed-switch
.end method
