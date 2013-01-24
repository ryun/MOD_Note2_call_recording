.class Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaSystemSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaSystemSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaSystemSelectListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V

    return-void
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 139
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_53

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_53

    .line 140
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 141
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, settingsRoamingMode:I
    if-eqz v2, :cond_34

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    const/4 v3, 0x3

    if-eq v2, v3, :cond_34

    const/4 v3, 0x4

    if-ne v2, v3, :cond_54

    .line 150
    :cond_34
    if-eq v2, v1, :cond_4a

    .line 151
    move v1, v2

    .line 153
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_4a
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 166
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_53
    :goto_53
    return-void

    .line 163
    .restart local v1       #settingsRoamingMode:I
    .restart local v2       #statusCdmaRoamingMode:I
    :cond_54
    invoke-direct {p0}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->resetCdmaRoamingModeToDefault()V

    goto :goto_53
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 169
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 171
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 172
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 173
    .local v1, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    .end local v1           #cdmaRoamingMode:I
    :goto_31
    return-void

    .line 177
    :cond_32
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_31
.end method

.method private resetCdmaRoamingModeToDefault()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 191
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 134
    :goto_5
    return-void

    .line 127
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_5

    .line 131
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_5

    .line 125
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
