.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 274
    .local v0, ar:Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_106

    .line 341
    :goto_9
    return-void

    .line 276
    :pswitch_a
    const-string v9, "ConnectionHandler: updating mute state for each connection"

    const/4 v10, 0x1

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;Z)V

    .line 278
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CallManager;

    .line 285
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v7, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 287
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_21

    .line 288
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 291
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_3b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3f
    :goto_3f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 292
    .local v4, cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3f

    .line 293
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 300
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_5f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, bgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6c
    :goto_6c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_86

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 302
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_6c

    .line 303
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6c

    .line 306
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8a
    :goto_8a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 307
    .restart local v4       #cn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_8a

    .line 308
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 316
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_aa
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 317
    .local v5, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_b6
    :goto_b6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 318
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 319
    .restart local v4       #cn:Lcom/android/internal/telephony/Connection;
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b6

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b6

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connection \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' not accounted for, removing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->access$200(Ljava/lang/String;)V

    .line 321
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_b6

    .line 331
    .end local v4           #cn:Lcom/android/internal/telephony/Connection;
    :cond_ee
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v9, v10, :cond_fb

    .line 332
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    goto/16 :goto_9

    .line 334
    :cond_fb
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    const/4 v10, 0x0

    #calls: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->access$300(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_9

    .line 274
    nop

    :pswitch_data_106
    .packed-switch -0x1
        :pswitch_a
    .end packed-switch
.end method
