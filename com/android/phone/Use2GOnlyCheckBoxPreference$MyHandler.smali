.class Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4b

    .line 96
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 97
    .local v1, type:I
    if-eq v1, v3, :cond_15

    .line 99
    const/4 v1, 0x0

    .line 101
    :cond_15
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get preferred network type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    if-ne v1, v3, :cond_49

    move v2, v3

    :goto_32
    invoke-virtual {v5, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setChecked(Z)V

    .line 103
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    .end local v1           #type:I
    :goto_48
    return-void

    .restart local v1       #type:I
    :cond_49
    move v2, v4

    .line 102
    goto :goto_32

    .line 107
    .end local v1           #type:I
    :cond_4b
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type, exception="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    goto :goto_48
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 115
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_36

    .line 117
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 119
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 124
    :goto_35
    return-void

    .line 122
    :cond_36
    const-string v1, "Use2GOnlyCheckBoxPreference"

    const-string v2, "set preferred network type done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 90
    :goto_5
    return-void

    .line 83
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 87
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 81
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
