.class final Lcom/android/phone/PhoneUtils$6;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2579
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 15
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2586
    const-string v8, "onQueryComplete : query complete, updating connection.userdata"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    move-object v3, p2

    .line 2587
    check-cast v3, Lcom/android/internal/telephony/Connection;

    .local v3, conn:Lcom/android/internal/telephony/Connection;
    move-object v1, p2

    .line 2594
    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2595
    .local v1, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 2596
    .local v5, o:Ljava/lang/Object;
    const-string v8, "feature_att"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2597
    const/4 v7, 0x0

    .line 2598
    .local v7, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v8, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v8, :cond_14b

    move-object v8, v5

    .line 2600
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v8, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v8, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    .line 2607
    :cond_23
    :goto_23
    iput-object v7, p3, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    .line 2609
    .end local v7           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    const/4 v2, 0x0

    .line 2610
    .local v2, ciOld:Lcom/android/internal/telephony/CallerInfo;
    instance-of v8, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v8, :cond_156

    .line 2611
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #o:Ljava/lang/Object;
    iget-object v2, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2618
    :cond_2e
    :goto_2e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete: CallerInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 2621
    const-string v8, "roaming_auto_dial"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 2622
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 2623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete : ci.phoneNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", conn.getAddress() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 2624
    iget-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2625
    .local v6, result:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8a

    iput-object v6, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2629
    .end local v6           #result:Ljava/lang/String;
    :cond_8a
    const-string v8, "cdnip_supplementary_service"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 2630
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b6

    .line 2631
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 2632
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete : ci.cdnipNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 2636
    :cond_b6
    const-string v8, "visual_expression"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 2637
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_106

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_106

    .line 2638
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 2639
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onQueryComplete : ci.sktVEUrl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 2640
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2641
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getInstance()Lcom/android/phone/VE_ContentManager;

    move-result-object v8

    iget-object v9, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v10, p3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/phone/VE_ContentManager;->init(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v8

    if-eqz v8, :cond_106

    .line 2643
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x11ef

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2648
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_106
    iget-boolean v8, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v8, :cond_116

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v8

    if-nez v8, :cond_116

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v8

    if-eqz v8, :cond_15f

    .line 2665
    :cond_116
    iget v8, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v8, :cond_120

    .line 2666
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v8

    iput v8, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2684
    :cond_120
    :goto_120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "==> Stashing CallerInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into the connection..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v3, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2686
    const-string v8, "ecid_enable"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14a

    .line 2688
    invoke-static {v2, p3}, Lcom/android/phone/EcidClient;->updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2691
    :cond_14a
    return-void

    .line 2602
    .end local v2           #ciOld:Lcom/android/internal/telephony/CallerInfo;
    .restart local v5       #o:Ljava/lang/Object;
    .restart local v7       #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_14b
    instance-of v8, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_23

    move-object v8, v5

    .line 2603
    check-cast v8, Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v8, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    goto/16 :goto_23

    .line 2612
    .end local v7           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #ciOld:Lcom/android/internal/telephony/CallerInfo;
    :cond_156
    instance-of v8, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_2e

    move-object v2, v5

    .line 2613
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_2e

    .line 2673
    .end local v5           #o:Ljava/lang/Object;
    :cond_15f
    const/4 v8, 0x0

    invoke-static {v8, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 2677
    .local v4, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v4, :cond_120

    .line 2678
    iget-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2679
    iget-object v8, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 2680
    move-object p3, v4

    goto :goto_120
.end method
