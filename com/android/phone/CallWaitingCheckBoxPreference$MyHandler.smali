.class Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 101
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 102
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_58

    .line 103
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v6, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 109
    :cond_1d
    :goto_1d
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_64

    .line 111
    const-string v3, "CallWaitingCheckBoxPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 113
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 114
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v4, v6, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 117
    :cond_52
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 137
    :cond_57
    :goto_57
    return-void

    .line 105
    :cond_58
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v6, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_1d

    .line 118
    :cond_64
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_80

    .line 119
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 120
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/16 v5, 0x190

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_57

    .line 124
    :cond_80
    const-string v3, "CallWaitingCheckBoxPreference"

    const-string v6, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 126
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 131
    .local v1, cwArray:[I
    :try_start_8e
    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/4 v3, 0x0

    aget v3, v1, v3

    if-ne v3, v4, :cond_bf

    const/4 v3, 0x1

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_bf

    move v3, v4

    :goto_9d
    invoke-virtual {v6, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V
    :try_end_a0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8e .. :try_end_a0} :catch_a1

    goto :goto_57

    .line 132
    :catch_a1
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "CallWaitingCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCallWaitingResponse: improper result: err ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_bf
    move v3, v5

    .line 131
    goto :goto_9d
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_23

    .line 144
    const-string v1, "CallWaitingCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 148
    :cond_23
    const-string v1, "CallWaitingCheckBoxPreference"

    const-string v2, "handleSetCallWaitingResponse: re get"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 150
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #getter for: Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$200(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 152
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 96
    :goto_5
    return-void

    .line 90
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 93
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 88
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
