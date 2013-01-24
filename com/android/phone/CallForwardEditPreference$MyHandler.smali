.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/16 v13, 0x190

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 279
    const-string v8, "CallForwardEditPreference"

    const-string v9, "handleGetCFResponse: done"

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 283
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8, v12}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 285
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v8, :cond_57

    .line 286
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v11, :cond_5d

    .line 287
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 292
    :goto_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 294
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iput-object v12, v8, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 295
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_67

    .line 296
    const-string v8, "CallForwardEditPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleGetCFResponse: ar.exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 297
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v9, v10, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 385
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_57
    :goto_57
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #calls: Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V
    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)V

    .line 386
    return-void

    .line 289
    :cond_5d
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v8, v9, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_24

    .line 300
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_67
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Throwable;

    if-eqz v8, :cond_7d

    .line 301
    const-string v8, "CallForwardEditPreference"

    const-string v9, "userObj is Throwable instance !!"

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 302
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v8, v9, v13}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 304
    :cond_7d
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v8

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 305
    .local v2, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v8, v2

    if-nez v8, :cond_98

    .line 306
    const-string v8, "CallForwardEditPreference"

    const-string v9, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 307
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v8, v9, v13}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_57

    .line 309
    :cond_98
    const/4 v4, 0x0

    .local v4, i:I
    array-length v6, v2

    .local v6, length:I
    :goto_9a
    if-ge v4, v6, :cond_57

    .line 310
    const-string v8, "CallForwardEditPreference"

    const-string v9, "handleGetCFResponse, cfInfoArray["

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v8, "CallForwardEditPreference"

    const-string v9, "mServiceClass = "

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v10}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 316
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v8

    aget-object v9, v2, v4

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_146

    .line 318
    aget-object v5, v2, v4

    .line 319
    .local v5, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8, v5, p1}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    .line 327
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v11, :cond_146

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_146

    iget v8, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v11, :cond_146

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisablePopupMsgWhenDeactivatingCallForwarding"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v11, :cond_146

    .line 335
    const-string v8, "callforwarding_popup_in_can"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_166

    .line 337
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v8, v8, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v8, :pswitch_data_1a0

    .line 345
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e007d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 361
    .local v7, s:Ljava/lang/CharSequence;
    :goto_118
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0e0087

    invoke-virtual {v1, v8, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e007f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 371
    :try_start_13f
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_146} :catch_197

    .line 309
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #s:Ljava/lang/CharSequence;
    :cond_146
    :goto_146
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9a

    .line 339
    .restart local v5       #info:Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_14a
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0071

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 340
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_118

    .line 342
    .end local v7           #s:Ljava/lang/CharSequence;
    :pswitch_158
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0077

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 343
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_118

    .line 350
    .end local v7           #s:Ljava/lang/CharSequence;
    :cond_166
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v8, v8, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v8, :pswitch_data_1a8

    .line 358
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e007c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_118

    .line 352
    .end local v7           #s:Ljava/lang/CharSequence;
    :pswitch_17b
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0070

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 353
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_118

    .line 355
    .end local v7           #s:Ljava/lang/CharSequence;
    :pswitch_189
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0076

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 356
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_118

    .line 372
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    :catch_197
    move-exception v3

    .line 373
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "CallForwardEditPreference"

    const-string v9, "handleGetCFResponse: is your activity running?"

    invoke-static {v8, v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_146

    .line 337
    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_14a
        :pswitch_158
    .end packed-switch

    .line 350
    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_189
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 391
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_24

    .line 392
    const-string v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCFResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 396
    :cond_24
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v6}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 398
    const-string v1, "CallForwardEditPreference"

    const-string v2, "handleSetCFResponse: re get"

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 399
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v3, v5, v4}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 401
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 276
    :goto_5
    return-void

    .line 270
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 273
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 268
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
