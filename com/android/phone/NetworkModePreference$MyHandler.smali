.class Lcom/android/phone/NetworkModePreference$MyHandler;
.super Landroid/os/Handler;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 300
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_32

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_32

    .line 301
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v5

    .line 302
    .local v1, type:I
    const-string v2, "NetworkModePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 303
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V

    .line 309
    .end local v1           #type:I
    :goto_31
    return-void

    .line 306
    :cond_32
    const-string v2, "NetworkModePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 307
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    goto :goto_31
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 312
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 314
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    .line 315
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_49

    .line 319
    const-string v1, "NetworkModePreference"

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

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 320
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 330
    :goto_36
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 331
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #calls: Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V
    invoke-static {v1, v4}, Lcom/android/phone/NetworkModePreference;->access$600(Lcom/android/phone/NetworkModePreference;Z)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #setter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v1, v5}, Lcom/android/phone/NetworkModePreference;->access$002(Lcom/android/phone/NetworkModePreference;Z)Z

    .line 334
    :cond_48
    return-void

    .line 322
    :cond_49
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V

    .line 323
    const-string v1, "NetworkModePreference"

    const-string v2, "set preferred network type done"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_36
.end method

.method private updateState(I)V
    .registers 10
    .parameter "type"

    .prologue
    const v7, 0x7f080014

    const/4 v6, 0x1

    .line 339
    const-string v3, "change_network_mode_ui"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 340
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original State : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v3, 0x3

    if-ne p1, v3, :cond_a5

    .line 344
    const/16 p1, 0x9

    .line 351
    :cond_29
    :goto_29
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 354
    .local v1, selectedIndex:I
    const-string v3, "network_mode_list_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 355
    const-string v3, "remove_network_mode_gsm_only"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 356
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, summaryString:[Ljava/lang/String;
    :goto_54
    array-length v3, v2

    if-ge v1, v3, :cond_59

    if-gez v1, :cond_1c6

    .line 385
    :cond_59
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mode is not included in supported network mode, will be shown PREFERRED_NT_MODE mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 386
    const-string v3, "network_mode_list_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1be

    const-string v3, "remove_network_mode_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1be

    .line 387
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    const/16 v4, 0x9

    #setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v3, v4}, Lcom/android/phone/NetworkModePreference;->access$802(Lcom/android/phone/NetworkModePreference;I)I

    .line 391
    :goto_88
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 395
    .local v0, defaultIndex:I
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3, v0}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    .line 405
    .end local v0           #defaultIndex:I
    :goto_a4
    return-void

    .line 346
    .end local v1           #selectedIndex:I
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_a5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_29

    .line 347
    const/16 p1, 0xc

    goto/16 :goto_29

    .line 357
    .restart local v1       #selectedIndex:I
    :cond_ac
    const-string v3, "remove_network_mode_wcdma_only"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 358
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto :goto_54

    .line 359
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_c6
    const-string v3, "remove_network_mode_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 360
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 361
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_de
    const-string v3, "cust_network_sel_menu4_orange"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 362
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 363
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_f9
    const-string v3, "cust_network_sel_menu4_vodafone"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 364
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 365
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_114
    const-string v3, "cust_network_sel_menu4_addauto"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 366
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 368
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_12f
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 370
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_142
    const-string v3, "network_mode_list_dcm_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 371
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 373
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_15d
    const-string v3, "remove_network_mode_gsm_only"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 374
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 375
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_178
    const-string v3, "remove_network_mode_wcdma_only"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 376
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 377
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_193
    const-string v3, "cust_network_sel_menu4_vodafone"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ae

    .line 378
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 380
    .end local v2           #summaryString:[Ljava/lang/String;
    :cond_1ae
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summaryString:[Ljava/lang/String;
    goto/16 :goto_54

    .line 389
    :cond_1be
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v3, v4}, Lcom/android/phone/NetworkModePreference;->access$802(Lcom/android/phone/NetworkModePreference;I)I

    goto/16 :goto_88

    .line 398
    :cond_1c6
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    #setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v3, p1}, Lcom/android/phone/NetworkModePreference;->access$802(Lcom/android/phone/NetworkModePreference;I)I

    .line 400
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 402
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    goto/16 :goto_a4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 295
    :goto_5
    return-void

    .line 288
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 292
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 286
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
