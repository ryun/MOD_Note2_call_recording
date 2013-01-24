.class Lcom/android/phone/PhoneInterfaceManager$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    .line 1570
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_182

    .line 1659
    :pswitch_6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1663
    :cond_9
    :goto_9
    return-void

    .line 1574
    :pswitch_a
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, v7, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1576
    const-string v7, "PhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phone Info got: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v9, v9, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1582
    :pswitch_33
    const/4 v4, 0x0

    .line 1585
    .local v4, response:Landroid/os/Message;
    const-string v7, "ims_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1586
    const-string v7, "PhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got EVENT_ISIM_AUTHENTICATION_DONE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v7, :cond_60

    .line 1590
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "msg.obj is  null====="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1593
    :cond_60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1595
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 1596
    .local v1, dataArr:[B
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_71

    .line 1598
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "ar.result is  null====="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1603
    :cond_71
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v7, :cond_f4

    .line 1605
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1606
    .local v5, result:Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v1, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .end local v1           #dataArr:[B
    check-cast v1, [B

    .line 1626
    .end local v5           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v1       #dataArr:[B
    :cond_7f
    :goto_7f
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.internal.ims.ISIMAuthParams"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1627
    .local v3, newIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1628
    .local v2, eventType:Ljava/lang/String;
    const-string v2, "REGISTER"

    .line 1629
    const-string v7, "PhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evenType====="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v7, "PhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataArr====="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const-string v7, "REGISTER"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_171

    .line 1632
    const-string v7, "eventType"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1636
    :goto_cb
    const-string v7, "data"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1637
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v7, v7, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    if-eqz v7, :cond_179

    .line 1639
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "mApplication.mContext is not null====="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v7, v7, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7, v3}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1648
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "ISIM >>> [ICCFileHandler] Got the ICCIOResult"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "ISIM >>> [ICCFileHandler] Sending to ICCRecords"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1608
    .end local v2           #eventType:Ljava/lang/String;
    .end local v3           #newIntent:Landroid/content/Intent;
    :cond_f4
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_7f

    .line 1610
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1611
    .local v5, result:Ljava/lang/String;
    const-string v7, "PhoneInterfaceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMS_AKA result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/4 v6, 0x0

    .line 1613
    .local v6, strAkaResult:Ljava/lang/String;
    if-eqz v5, :cond_7f

    .line 1614
    const-string v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_149

    .line 1615
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "IMS_AKA result = is success appending DB "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1617
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_7f

    .line 1620
    :cond_149
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "IMS_AKA result = is failure appending DC "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1622
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_7f

    .line 1634
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #strAkaResult:Ljava/lang/String;
    .restart local v2       #eventType:Ljava/lang/String;
    .restart local v3       #newIntent:Landroid/content/Intent;
    :cond_171
    const-string v7, "eventType"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_cb

    .line 1644
    :cond_179
    const-string v7, "PhoneInterfaceManager"

    const-string v8, "mApplication.mContext is  null====="

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1570
    :pswitch_data_182
    .packed-switch 0x13
        :pswitch_33
        :pswitch_6
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
