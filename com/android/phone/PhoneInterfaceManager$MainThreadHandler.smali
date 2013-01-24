.class public Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 44
    .parameter "msg"

    .prologue
    .line 217
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_a18

    .line 736
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_23
    :goto_23
    return-void

    .line 220
    :pswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 221
    .local v37, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v14, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;

    .line 222
    .local v14, argumentSIMIO:Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 224
    .local v11, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget v3, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->command:I

    iget v4, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->fileID:I

    iget-object v5, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->filepath:Ljava/lang/String;

    iget v6, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p1:I

    iget v7, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p2:I

    iget v8, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p3:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/IccCard;->transmitIccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_23

    .line 229
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v14           #argumentSIMIO:Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_58
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 230
    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 232
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v2, :cond_93

    .line 233
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_83

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_83

    .line 234
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 255
    :goto_7a
    monitor-enter v37

    .line 256
    :try_start_7b
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit v37

    goto :goto_23

    :catchall_80
    move-exception v2

    monitor-exit v37
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_80

    throw v2

    .line 236
    :cond_83
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7a

    .line 239
    :cond_93
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_dd

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_dd

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_dd

    .line 242
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v15, v2

    check-cast v15, [B

    .line 243
    .local v15, b:[B
    const/16 v23, 0x0

    .line 245
    .local v23, data:[B
    array-length v2, v15

    const/4 v3, 0x2

    if-le v2, v3, :cond_c3

    .line 246
    array-length v2, v15

    add-int/lit8 v2, v2, -0x2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 247
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v23

    invoke-static {v15, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :cond_c3
    new-instance v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    array-length v3, v15

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v15, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7a

    .line 252
    .end local v15           #b:[B
    .end local v23           #data:[B
    :cond_dd
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7a

    .line 261
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_ed
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 262
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 263
    .local v13, argumentAPDU:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 270
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v17, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v24, Ljava/io/DataOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    .local v24, dos:Ljava/io/DataOutputStream;
    const/16 v32, 0x0

    .line 274
    .local v32, len:I
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    if-nez v2, :cond_266

    .line 275
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_21a

    .line 276
    const/16 v32, 0x9

    .line 281
    :goto_11f
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_126

    .line 282
    add-int/lit8 v32, v32, -0x1

    .line 285
    :cond_126
    const/16 v2, 0x15

    :try_start_128
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 286
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 287
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 288
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 289
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 290
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 291
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 292
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_163

    .line 293
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 295
    :cond_163
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_165} :catch_25a

    if-nez v2, :cond_226

    .line 344
    :cond_167
    :goto_167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "APDU-TEST1"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data being sent to RIL is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "channel id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 349
    :cond_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 352
    if-eqz v24, :cond_23

    .line 354
    :try_start_1f3
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_1f8

    goto/16 :goto_23

    .line 355
    :catch_1f8
    move-exception v28

    .line 356
    .local v28, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_EXCHANGE_APDU : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_23

    .line 278
    .end local v28           #e:Ljava/io/IOException;
    :cond_21a
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0x9

    goto/16 :goto_11f

    .line 297
    :cond_226
    :try_start_226
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 298
    .local v16, ba:[B
    const/16 v30, 0x0

    .local v30, i:I
    :goto_234
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_167

    .line 299
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 301
    aget-byte v2, v16, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_257
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_257} :catch_25a

    .line 298
    add-int/lit8 v30, v30, 0x1

    goto :goto_234

    .line 304
    .end local v16           #ba:[B
    .end local v30           #i:I
    :catch_25a
    move-exception v28

    .line 305
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_167

    .line 308
    .end local v28           #e:Ljava/io/IOException;
    :cond_266
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_2f4

    .line 309
    const/16 v32, 0xd

    .line 314
    :goto_26c
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_273

    .line 315
    add-int/lit8 v32, v32, -0x1

    .line 318
    :cond_273
    const/16 v2, 0x15

    :try_start_275
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 319
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_300

    .line 320
    const/16 v2, 0xb

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 323
    :goto_286
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 324
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 325
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 326
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 327
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 328
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b5

    .line 329
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 330
    :cond_2b5
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 331
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-eqz v2, :cond_167

    .line 333
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 334
    .restart local v16       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_2ce
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_167

    .line 335
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 337
    aget-byte v2, v16, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2f1
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_2f1} :catch_309

    .line 334
    add-int/lit8 v30, v30, 0x1

    goto :goto_2ce

    .line 311
    .end local v16           #ba:[B
    .end local v30           #i:I
    :cond_2f4
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0xd

    goto/16 :goto_26c

    .line 322
    :cond_300
    const/16 v2, 0xc

    :try_start_302
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_302 .. :try_end_307} :catch_309

    goto/16 :goto_286

    .line 340
    :catch_309
    move-exception v28

    .line 341
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_167

    .line 372
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v13           #argumentAPDU:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v17           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v24           #dos:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v32           #len:I
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_315
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 373
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 374
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_37c

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_37c

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_37c

    .line 376
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v15, v2

    check-cast v15, [B

    .line 377
    .restart local v15       #b:[B
    const/16 v23, 0x0

    .line 379
    .restart local v23       #data:[B
    array-length v2, v15

    const/4 v3, 0x2

    if-le v2, v3, :cond_351

    .line 380
    array-length v2, v15

    add-int/lit8 v2, v2, -0x2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 381
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v23

    invoke-static {v15, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    :cond_351
    new-instance v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    array-length v3, v15

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v15, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 396
    .end local v15           #b:[B
    .end local v23           #data:[B
    :cond_372
    :goto_372
    monitor-enter v37

    .line 397
    :try_start_373
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v37

    goto/16 :goto_23

    :catchall_379
    move-exception v2

    monitor-exit v37
    :try_end_37b
    .catchall {:try_start_373 .. :try_end_37b} :catchall_379

    throw v2

    .line 387
    :cond_37c
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 389
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_372

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_372

    .line 390
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_372

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_372

    .line 402
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3b2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 403
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    .line 404
    .local v35, openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    const/16 v2, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 405
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .local v20, bos_open:Ljava/io/ByteArrayOutputStream;
    new-instance v27, Ljava/io/DataOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 407
    .local v27, dos_open:Ljava/io/DataOutputStream;
    const/16 v34, 0x0

    .line 411
    .local v34, len_open:I
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    if-nez v2, :cond_448

    .line 412
    const/16 v34, 0x4

    .line 417
    :goto_3e4
    const/16 v2, 0x15

    :try_start_3e6
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 418
    const/16 v2, 0x9

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 419
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 420
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;
    :try_end_3fd
    .catch Ljava/io/IOException; {:try_start_3e6 .. :try_end_3fd} :catch_48d

    if-nez v2, :cond_455

    .line 433
    :cond_3ff
    :goto_3ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "OPEN CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 437
    if-eqz v27, :cond_23

    .line 439
    :try_start_421
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataOutputStream;->close()V
    :try_end_424
    .catch Ljava/io/IOException; {:try_start_421 .. :try_end_424} :catch_426

    goto/16 :goto_23

    .line 440
    :catch_426
    move-exception v28

    .line 441
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_OPEN_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_23

    .line 414
    .end local v28           #e:Ljava/io/IOException;
    :cond_448
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v34, v2, 0x4

    goto :goto_3e4

    .line 423
    :cond_455
    :try_start_455
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 424
    .restart local v16       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_465
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_3ff

    .line 425
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 427
    aget-byte v2, v16, v30

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_48a
    .catch Ljava/io/IOException; {:try_start_455 .. :try_end_48a} :catch_48d

    .line 424
    add-int/lit8 v30, v30, 0x1

    goto :goto_465

    .line 430
    .end local v16           #ba:[B
    .end local v30           #i:I
    :catch_48d
    move-exception v28

    .line 431
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in open channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_3ff

    .line 448
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v20           #bos_open:Ljava/io/ByteArrayOutputStream;
    .end local v27           #dos_open:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v34           #len_open:I
    .end local v35           #openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_499
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 449
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 450
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "response came"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 451
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5bd

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5bd

    .line 453
    const/16 v41, 0x0

    .line 454
    .local v41, temp:I
    const/16 v22, 0x0

    .line 456
    .local v22, count:I
    const/16 v31, 0x0

    .line 457
    .local v31, id_len:I
    const/16 v40, 0x0

    .line 459
    .local v40, select_res_len:I
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v23, v2

    check-cast v23, [B

    .line 462
    .restart local v23       #data:[B
    const/4 v2, 0x0

    aget-byte v31, v23, v2

    .line 463
    add-int/lit8 v2, v31, 0x1

    aget-byte v40, v23, v2

    .line 466
    move/from16 v22, v31

    :goto_4cf
    const/4 v2, 0x1

    move/from16 v0, v22

    if-lt v0, v2, :cond_4ed

    .line 467
    aget-byte v2, v23, v22

    if-gez v2, :cond_4e8

    .line 468
    aget-byte v2, v23, v22

    add-int/lit16 v2, v2, 0x100

    or-int v41, v41, v2

    .line 473
    :goto_4de
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_4e5

    .line 474
    shl-int/lit8 v41, v41, 0x8

    .line 466
    :cond_4e5
    add-int/lit8 v22, v22, -0x1

    goto :goto_4cf

    .line 470
    :cond_4e8
    aget-byte v2, v23, v22

    or-int v41, v41, v2

    goto :goto_4de

    .line 477
    :cond_4ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_537

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from sim is data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session Id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 480
    :cond_537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select_res_len"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 484
    if-lez v40, :cond_5a0

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v40

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 486
    add-int/lit8 v2, v31, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response of Select application :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 490
    :cond_5a0
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v41

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 506
    .end local v22           #count:I
    .end local v23           #data:[B
    .end local v31           #id_len:I
    .end local v40           #select_res_len:I
    .end local v41           #temp:I
    :cond_5b3
    :goto_5b3
    monitor-enter v37

    .line 507
    :try_start_5b4
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 508
    monitor-exit v37

    goto/16 :goto_23

    :catchall_5ba
    move-exception v2

    monitor-exit v37
    :try_end_5bc
    .catchall {:try_start_5b4 .. :try_end_5bc} :catchall_5ba

    throw v2

    .line 494
    :cond_5bd
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 496
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5b3

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_5b3

    .line 497
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_5ee

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_5b3

    .line 500
    :cond_5ee
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_5b3

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_5b3

    .line 512
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_603
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 513
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    .line 514
    .local v21, closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 515
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 516
    .local v19, bos_close:Ljava/io/ByteArrayOutputStream;
    new-instance v26, Ljava/io/DataOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 517
    .local v26, dos_close:Ljava/io/DataOutputStream;
    const/16 v33, 0x0

    .line 518
    .local v33, len_close:I
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    if-nez v2, :cond_699

    .line 519
    const/16 v33, 0x4

    .line 524
    :goto_635
    const/16 v2, 0x15

    :try_start_637
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 525
    const/16 v2, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 526
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 527
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I
    :try_end_64e
    .catch Ljava/io/IOException; {:try_start_637 .. :try_end_64e} :catch_6ca

    if-nez v2, :cond_69c

    .line 537
    :goto_650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "CLOSE CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 541
    if-eqz v26, :cond_23

    .line 543
    :try_start_672
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_675
    .catch Ljava/io/IOException; {:try_start_672 .. :try_end_675} :catch_677

    goto/16 :goto_23

    .line 544
    :catch_677
    move-exception v28

    .line 545
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_CLOSE_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_23

    .line 521
    .end local v28           #e:Ljava/io/IOException;
    :cond_699
    const/16 v33, 0x8

    goto :goto_635

    .line 530
    :cond_69c
    :try_start_69c
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session ID received from application is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 532
    :cond_6c0
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6c9
    .catch Ljava/io/IOException; {:try_start_69c .. :try_end_6c9} :catch_6ca

    goto :goto_650

    .line 534
    :catch_6ca
    move-exception v28

    .line 535
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in close channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_650

    .line 552
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v19           #bos_close:Ljava/io/ByteArrayOutputStream;
    .end local v21           #closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    .end local v26           #dos_close:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v33           #len_close:I
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_6d6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 553
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 554
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_702

    .line 555
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 567
    :cond_6f8
    :goto_6f8
    monitor-enter v37

    .line 568
    :try_start_6f9
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 569
    monitor-exit v37

    goto/16 :goto_23

    :catchall_6ff
    move-exception v2

    monitor-exit v37
    :try_end_701
    .catchall {:try_start_6f9 .. :try_end_701} :catchall_6ff

    throw v2

    .line 558
    :cond_702
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 560
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6f8

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_6f8

    .line 561
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_6f8

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_6f8

    .line 573
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "GET_ATR-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 575
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 576
    .local v18, bos1:Ljava/io/ByteArrayOutputStream;
    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 579
    .local v25, dos1:Ljava/io/DataOutputStream;
    const/16 v2, 0x15

    :try_start_754
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 580
    const/16 v2, 0xd

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 581
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_766
    .catch Ljava/io/IOException; {:try_start_754 .. :try_end_766} :catch_7ad

    .line 586
    :goto_766
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "Request ATR Info"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 590
    if-eqz v25, :cond_23

    .line 592
    :try_start_786
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->close()V
    :try_end_789
    .catch Ljava/io/IOException; {:try_start_786 .. :try_end_789} :catch_78b

    goto/16 :goto_23

    .line 593
    :catch_78b
    move-exception v28

    .line 594
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_GET_ATR_INFO : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_23

    .line 582
    .end local v28           #e:Ljava/io/IOException;
    :catch_7ad
    move-exception v28

    .line 583
    .restart local v28       #e:Ljava/io/IOException;
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_766

    .line 601
    .end local v18           #bos1:Ljava/io/ByteArrayOutputStream;
    .end local v25           #dos1:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "EVENT_GET_ATR_INFO_DONE"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 602
    const/16 v23, 0x0

    .line 604
    .restart local v23       #data:[B
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 605
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 607
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_83e

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_83e

    .line 608
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v38, v2

    check-cast v38, [B

    .line 610
    .local v38, result:[B
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR Length :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v38, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v2, 0x0

    aget-byte v2, v38, v2

    if-lez v2, :cond_82e

    .line 612
    const/4 v2, 0x0

    aget-byte v2, v38, v2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 613
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_82e

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v38           #result:[B
    :cond_82e
    :goto_82e
    move-object/from16 v0, v23

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 623
    monitor-enter v37

    .line 624
    :try_start_835
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 625
    monitor-exit v37

    goto/16 :goto_23

    :catchall_83b
    move-exception v2

    monitor-exit v37
    :try_end_83d
    .catchall {:try_start_835 .. :try_end_83d} :catchall_83b

    throw v2

    .line 618
    :cond_83e
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in EVENT_GET_ATR_INFO_DONE with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82e

    .line 629
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_859
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 630
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 633
    monitor-enter v37

    .line 634
    :try_start_87a
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit v37

    goto/16 :goto_23

    :catchall_880
    move-exception v2

    monitor-exit v37
    :try_end_882
    .catchall {:try_start_87a .. :try_end_882} :catchall_880

    throw v2

    .line 639
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_883
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 640
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 642
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v11}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_23

    .line 646
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_89f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 647
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 648
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8c3

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_8c3

    .line 649
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 655
    :goto_8b9
    monitor-enter v37

    .line 656
    :try_start_8ba
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 657
    monitor-exit v37

    goto/16 :goto_23

    :catchall_8c0
    move-exception v2

    monitor-exit v37
    :try_end_8c2
    .catchall {:try_start_8ba .. :try_end_8c2} :catchall_8c0

    throw v2

    .line 652
    :cond_8c3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_8b9

    .line 661
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$300(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_23

    .line 665
    :pswitch_8d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_23

    .line 669
    :pswitch_8df
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 670
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v29, 0x0

    .line 671
    .local v29, hungUp:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v36

    .line 672
    .local v36, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v36

    if-ne v0, v2, :cond_938

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    .line 684
    :goto_902
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_926

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_END_CALL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v29, :cond_973

    const-string v2, "hung up!"

    :goto_91b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 685
    :cond_926
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 687
    monitor-enter v37

    .line 688
    :try_start_92f
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 689
    monitor-exit v37

    goto/16 :goto_23

    :catchall_935
    move-exception v2

    monitor-exit v37
    :try_end_937
    .catchall {:try_start_92f .. :try_end_937} :catchall_935

    throw v2

    .line 676
    :cond_938
    const/4 v2, 0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_948

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v29

    goto :goto_902

    .line 679
    :cond_948
    const/4 v2, 0x4

    move/from16 v0, v36

    if-ne v0, v2, :cond_958

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    goto :goto_902

    .line 682
    :cond_958
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_973
    const-string v2, "no call to hang up"

    goto :goto_91b

    .line 693
    .end local v29           #hungUp:Z
    .end local v36           #phoneType:I
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_976
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 694
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 695
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_23

    .line 699
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_99b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 700
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 701
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iput-object v12, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 703
    monitor-enter v37

    .line 704
    :try_start_9ac
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 705
    monitor-exit v37

    goto/16 :goto_23

    :catchall_9b2
    move-exception v2

    monitor-exit v37
    :try_end_9b4
    .catchall {:try_start_9ac .. :try_end_9b4} :catchall_9b2

    throw v2

    .line 709
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9b5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 710
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_23

    .line 714
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_9ca
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 715
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 716
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v11}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto/16 :goto_23

    .line 720
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9f1
    const/16 v39, 0x0

    .line 721
    .local v39, retStatus:Z
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 722
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 724
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a05

    .line 725
    const/16 v39, 0x1

    .line 727
    :cond_a05
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 730
    monitor-enter v37

    .line 731
    :try_start_a0e
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 732
    monitor-exit v37

    goto/16 :goto_23

    :catchall_a14
    move-exception v2

    monitor-exit v37
    :try_end_a16
    .catchall {:try_start_a0e .. :try_end_a16} :catchall_a14

    throw v2

    .line 217
    nop

    :pswitch_data_a18
    .packed-switch 0x1
        :pswitch_859
        :pswitch_883
        :pswitch_89f
        :pswitch_8cd
        :pswitch_8df
        :pswitch_8d6
        :pswitch_976
        :pswitch_99b
        :pswitch_9b5
        :pswitch_9ca
        :pswitch_9f1
        :pswitch_ed
        :pswitch_315
        :pswitch_3b2
        :pswitch_499
        :pswitch_603
        :pswitch_6d6
        :pswitch_733
        :pswitch_7b2
        :pswitch_24
        :pswitch_58
    .end packed-switch
.end method
