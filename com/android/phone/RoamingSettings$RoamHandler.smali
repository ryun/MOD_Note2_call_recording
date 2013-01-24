.class Lcom/android/phone/RoamingSettings$RoamHandler;
.super Landroid/os/Handler;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/RoamingSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/phone/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/RoamingSettings;Lcom/android/phone/RoamingSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings$RoamHandler;-><init>(Lcom/android/phone/RoamingSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 569
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 571
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9c

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_9c

    .line 572
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v5

    .line 575
    .local v1, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingSettings;->access$500(Ljava/lang/String;)V

    .line 579
    const-string v3, "preferred_network_mode"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v2

    .line 582
    .local v2, settingsNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingSettings;->access$500(Ljava/lang/String;)V

    .line 587
    if-eqz v1, :cond_5e

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5e

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5e

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5e

    const/4 v3, 0x5

    if-eq v1, v3, :cond_5e

    const/4 v3, 0x6

    if-eq v1, v3, :cond_5e

    const/4 v3, 0x7

    if-ne v1, v3, :cond_9d

    .line 596
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingSettings;->access$500(Ljava/lang/String;)V

    .line 601
    if-eq v1, v2, :cond_97

    .line 603
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    #calls: Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingSettings;->access$500(Ljava/lang/String;)V

    .line 607
    move v2, v1

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingSettings;->access$500(Ljava/lang/String;)V

    .line 614
    const-string v3, "preferred_network_mode"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 617
    :cond_97
    iget-object v3, p0, Lcom/android/phone/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/RoamingSettings;->access$600(Lcom/android/phone/RoamingSettings;I)V

    .line 623
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_9c
    :goto_9c
    return-void

    .line 619
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_9d
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    #calls: Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingSettings;->access$500(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings$RoamHandler;->resetNetworkModeToDefault()V

    goto :goto_9c
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 626
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 628
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_20

    .line 629
    iget-object v2, p0, Lcom/android/phone/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/RoamingSettings;->access$700(Lcom/android/phone/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 631
    .local v1, networkMode:I
    const-string v2, "preferred_network_mode"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 635
    .end local v1           #networkMode:I
    :goto_1f
    return-void

    .line 633
    :cond_20
    iget-object v2, p0, Lcom/android/phone/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/RoamingSettings;->access$200(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1f
.end method

.method private resetNetworkModeToDefault()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$700(Lcom/android/phone/RoamingSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 641
    const-string v0, "preferred_network_mode"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 644
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 645
    const-string v0, "preferred_network_mode"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 647
    :cond_20
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$RoamHandler;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$200(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 649
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 566
    :goto_5
    return-void

    .line 559
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings$RoamHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 563
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings$RoamHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 557
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
