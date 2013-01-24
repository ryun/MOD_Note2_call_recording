.class Lcom/android/phone/NetworkNotificationUI$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 6
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 427
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->access$1502(Lcom/android/phone/NetworkNotificationUI;I)I

    .line 431
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify3gWarning mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsWifiConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m3gwarningPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify3gWarning updateWifistate() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->updateWifistate()Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f9

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->updateWifistate()Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_f9

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1900(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    if-nez v0, :cond_f9

    .line 442
    :cond_c0
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify3gWarning mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$2000(Lcom/android/phone/NetworkNotificationUI;)V

    .line 444
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$302(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 446
    :cond_f9
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v1

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$1602(Lcom/android/phone/NetworkNotificationUI;I)I

    .line 447
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 13
    .parameter "state"

    .prologue
    const/16 v10, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 322
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$800()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 323
    const-string v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged-S:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_22
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 326
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v7, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    .line 328
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, v7, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_168

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, v7, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_168

    move v1, v5

    .line 331
    .local v1, hasRegistered:Z
    :goto_43
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iput-object v8, v7, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    .line 333
    if-eqz v1, :cond_a3

    .line 334
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 335
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v7, "persist_sys_rplmn"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, rplmn:Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v7

    if-eqz v7, :cond_91

    const-string v7, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RPLMN :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , roaming :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1000(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_91
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1000(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v7

    if-nez v7, :cond_16b

    .line 340
    const-string v7, "persist_sys_rplmn"

    const-string v8, "domestic"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #hasRegistered:Z
    .end local v3           #rplmn:Ljava/lang/String;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_a3
    :goto_a3
    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 351
    const-string v7, "20"

    const-string v8, "ril.simtype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 352
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v7, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    .line 354
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, v7, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v7, :cond_cd

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, v7, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_18c

    :cond_cd
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, v7, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    if-eqz v7, :cond_18c

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, v7, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_18c

    move v1, v5

    .line 357
    .restart local v1       #hasRegistered:Z
    :goto_de
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v7, v7, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iput-object v7, v5, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    .line 359
    if-eqz v1, :cond_f8

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.REGIST_HOME"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    .end local v1           #hasRegistered:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_f8
    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_120

    .line 368
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v5, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    .line 369
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v5, v5, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    if-nez v5, :cond_120

    .line 371
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v5

    if-eqz v5, :cond_11b

    const-string v5, "NetworkNotificationUI"

    const-string v7, "Reset mNoservicePopupSelectionNagativeButton for Switching to Automatic Selection"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_11b
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v5, v6}, Lcom/android/phone/NetworkNotificationUI;->access$1202(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 401
    :cond_120
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_167

    .line 403
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v5

    if-eqz v5, :cond_133

    const-string v5, "NetworkNotificationUI"

    const-string v6, "intae dismiss popup"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_133
    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 414
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 415
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    :cond_150
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_167

    .line 419
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1400(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 420
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v6}, Lcom/android/phone/NetworkNotificationUI;->access$1402(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 424
    :cond_167
    return-void

    :cond_168
    move v1, v6

    .line 328
    goto/16 :goto_43

    .line 342
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #hasRegistered:Z
    .restart local v3       #rplmn:Ljava/lang/String;
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    :cond_16b
    const-string v7, "domestic"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17b

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 343
    :cond_17b
    const-string v7, "persist_sys_rplmn"

    const-string v8, "oversea"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    iget-object v7, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V
    invoke-static {v7}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_a3

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #hasRegistered:Z
    .end local v3           #rplmn:Ljava/lang/String;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_18c
    move v1, v6

    .line 354
    goto/16 :goto_de
.end method
