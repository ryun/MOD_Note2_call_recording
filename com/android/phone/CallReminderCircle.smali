.class public Lcom/android/phone/CallReminderCircle;
.super Landroid/widget/FrameLayout;
.source "CallReminderCircle.java"

# interfaces
.implements Lcom/android/phone/CallReminderWidget$OnTriggerListener;


# instance fields
.field _PROJECTION:[Ljava/lang/String;

.field private mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

.field public mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

.field private mContext:Landroid/content/Context;

.field private mLastIncomingCallActionTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v2, "number"

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/CallReminderCircle;->_PROJECTION:[Ljava/lang/String;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    .local v0, inflater:Landroid/view/LayoutInflater;
    iput-object p1, p0, Lcom/android/phone/CallReminderCircle;->mContext:Landroid/content/Context;

    .line 58
    const v1, 0x7f040019

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    return-void
.end method

.method private hideCallReminderWidget()V
    .registers 3

    .prologue
    .line 159
    const-string v0, "hideCallReminderWidget()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderWidget;->clearAnimation()V

    .line 161
    iget-object v0, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderWidget;->setVisibility(I)V

    .line 162
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 178
    const-string v0, "CallReminderCircle"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private showCallReminderWidget(Z)V
    .registers 5
    .parameter "ringingCall"

    .prologue
    .line 148
    const-string v1, "showCallReminderWidget()..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;Z)V

    .line 150
    iget-object v1, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 151
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_16

    .line 152
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 153
    iget-object v1, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget;->clearAnimation()V

    .line 155
    :cond_16
    iget-object v1, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallReminderWidget;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderWidget;->reset()V

    .line 157
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 174
    const-string v0, "CallReminderCircle"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallReminderCircle onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;Z)V

    .line 71
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/android/phone/CallReminderCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallReminderWidget;

    iput-object v0, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    .line 72
    iget-object v0, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderWidget:Lcom/android/phone/CallReminderWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallReminderWidget;->setOnTriggerListener(Lcom/android/phone/CallReminderWidget$OnTriggerListener;)V

    .line 74
    invoke-direct {p0, v2}, Lcom/android/phone/CallReminderCircle;->showCallReminderWidget(Z)V

    .line 75
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 145
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 8
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v4, 0x1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialTrigger(whichHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;Z)V

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/CallReminderCircle;->mLastIncomingCallActionTime:J

    .line 103
    packed-switch p2, :pswitch_data_b8

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;Z)V

    .line 139
    :goto_3c
    return-void

    .line 105
    :pswitch_3d
    const-string v2, "GOLOGS_ID:"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;Z)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v3}, Lcom/android/phone/CallReminderActivity;->getLogid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v3}, Lcom/android/phone/CallReminderActivity;->getLogid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;)V

    .line 111
    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 112
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.dialertab.calllog.CallDetailActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :goto_86
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const-string v2, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/android/phone/CallReminderCircle;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-direct {p0}, Lcom/android/phone/CallReminderCircle;->hideCallReminderWidget()V

    .line 120
    iget-object v2, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v2}, Lcom/android/phone/CallReminderActivity;->StopAll()V

    goto :goto_3c

    .line 114
    :cond_a2
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.dialertab.calllog.CallDetailActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_86

    .line 125
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :pswitch_aa
    const-string v2, "FINISH_ID:"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallReminderCircle;->log(Ljava/lang/String;Z)V

    .line 126
    invoke-direct {p0}, Lcom/android/phone/CallReminderCircle;->hideCallReminderWidget()V

    .line 127
    iget-object v2, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v2}, Lcom/android/phone/CallReminderActivity;->StopAll()V

    goto :goto_3c

    .line 103
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_3d
    .end packed-switch
.end method

.method public setCallReminderActivityInstance(Lcom/android/phone/CallReminderActivity;)V
    .registers 2
    .parameter "remindActivity"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/phone/CallReminderCircle;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    .line 171
    return-void
.end method
