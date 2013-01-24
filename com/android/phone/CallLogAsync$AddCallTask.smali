.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallLogAsync;)V
    .registers 2
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 339
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .registers 31
    .parameter "callList"

    .prologue
    .line 342
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 343
    .local v19, count:I
    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v26, v0

    .line 344
    .local v26, result:[Landroid/net/Uri;
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v28, value:Landroid/content/ContentValues;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 349
    .local v27, salesCode:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, i:I
    :goto_18
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b5

    .line 350
    aget-object v17, p1, v23

    .line 353
    .local v17, c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v2, v3, v4}, Lcom/android/phone/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/phone/EcidContact;

    move-result-object v21

    .line 354
    .local v21, ecid:Lcom/android/phone/EcidContact;
    if-eqz v21, :cond_4f

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 355
    const-string v2, "cityid"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_4f
    const/16 v22, 0x0

    .line 359
    .local v22, fName:Ljava/lang/String;
    const/16 v24, 0x0

    .line 360
    .local v24, lName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 361
    .local v16, bName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 363
    .local v18, cnapName:Ljava/lang/String;
    if-eqz v21, :cond_69

    .line 364
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getFirstName()Ljava/lang/String;

    move-result-object v22

    .line 365
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getLastName()Ljava/lang/String;

    move-result-object v24

    .line 366
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getBizName()Ljava/lang/String;

    move-result-object v16

    .line 367
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getCnapName()Ljava/lang/String;

    move-result-object v18

    .line 370
    :cond_69
    if-eqz v21, :cond_7a

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 371
    const-string v2, "fname"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_7a
    if-eqz v21, :cond_8b

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 375
    const-string v2, "lname"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_8b
    if-eqz v21, :cond_9c

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 379
    const-string v2, "bname"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_9c
    if-eqz v21, :cond_cb

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cb

    if-eqz v18, :cond_cb

    const-string v2, "Unknown Name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    .line 383
    const-string v2, "LGT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_cb

    .line 385
    :cond_c2
    const-string v2, "cnap_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_cb
    if-eqz v21, :cond_d0

    .line 389
    invoke-static {}, Lcom/android/phone/EcidContact;->clearEcidContacts()V

    .line 392
    :cond_d0
    const-string v2, "date"

    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v2, "duration"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const/16 v14, 0x15

    .line 399
    .local v14, MESSAGE_CALL_TYPE:I
    const/16 v13, 0x16

    .line 400
    .local v13, CMF_CALL_TYPE:I
    const-string v15, "-4"

    .line 402
    .local v15, UNKNOWN_PHONE_NUMBER:Ljava/lang/String;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_104

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_2b6

    .line 403
    :cond_104
    const-string v2, "service_type"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    :goto_11f
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16e

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_16e

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    if-eqz v2, :cond_16e

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16e

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "Unknown Name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 415
    :cond_14f
    const-string v2, "LGT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_16e

    .line 416
    :cond_161
    const-string v2, "cnap_name"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_16e
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_195

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    if-eqz v2, :cond_195

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_195

    .line 421
    const-string v2, "cdnip_number"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_195
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1cc

    .line 425
    const-string v11, "ci_person_id"

    .line 426
    .local v11, CI_PERSON_ID:Ljava/lang/String;
    const-string v10, "ci_normalizedNumber"

    .line 427
    .local v10, CI_NORMALIZED_NUMBER:Ljava/lang/String;
    const-string v12, "ci_phoneNumber"

    .line 429
    .local v12, CI_PHONE_NUMBER:Ljava/lang/String;
    const-string v2, "ci_person_id"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v3, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    const-string v2, "ci_normalizedNumber"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v2, "ci_phoneNumber"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v10           #CI_NORMALIZED_NUMBER:Ljava/lang/String;
    .end local v11           #CI_PERSON_ID:Ljava/lang/String;
    .end local v12           #CI_PHONE_NUMBER:Ljava/lang/String;
    :cond_1cc
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    if-eqz v2, :cond_1db

    .line 435
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 438
    :cond_1db
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 439
    const-string v2, "m_content"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_1f2
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    if-eqz v2, :cond_223

    .line 447
    const-string v2, "simnum"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simnum is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_223
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 453
    .local v25, logNumber:Ljava/lang/String;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v3, :cond_2d3

    .line 454
    const-string v25, "-2"

    .line 467
    :cond_233
    :goto_233
    const-string v2, "number"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v2, "remind_me_later_set"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remind_me_later_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v2, "dormant_set"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dormant_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v2, "trigger_restart_min_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ae

    const-string v2, "1"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_303

    .line 476
    :cond_2ae
    const-string v2, "CallLogAsync"

    const-string v3, "AddCallTask :  ignored in encryption mode.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v13           #CMF_CALL_TYPE:I
    .end local v14           #MESSAGE_CALL_TYPE:I
    .end local v15           #UNKNOWN_PHONE_NUMBER:Ljava/lang/String;
    .end local v16           #bName:Ljava/lang/String;
    .end local v17           #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v18           #cnapName:Ljava/lang/String;
    .end local v21           #ecid:Lcom/android/phone/EcidContact;
    .end local v22           #fName:Ljava/lang/String;
    .end local v24           #lName:Ljava/lang/String;
    .end local v25           #logNumber:Ljava/lang/String;
    :cond_2b5
    return-object v26

    .line 406
    .restart local v13       #CMF_CALL_TYPE:I
    .restart local v14       #MESSAGE_CALL_TYPE:I
    .restart local v15       #UNKNOWN_PHONE_NUMBER:Ljava/lang/String;
    .restart local v16       #bName:Ljava/lang/String;
    .restart local v17       #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .restart local v18       #cnapName:Ljava/lang/String;
    .restart local v21       #ecid:Lcom/android/phone/EcidContact;
    .restart local v22       #fName:Ljava/lang/String;
    .restart local v24       #lName:Ljava/lang/String;
    :cond_2b6
    const-string v2, "service_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v2, "type"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_11f

    .line 455
    .restart local v25       #logNumber:Ljava/lang/String;
    :cond_2d3
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v2, v3, :cond_2df

    .line 456
    const-string v25, "-3"

    goto/16 :goto_233

    .line 457
    :cond_2df
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v2, v3, :cond_2eb

    .line 458
    const-string v25, "-1"

    goto/16 :goto_233

    .line 459
    :cond_2eb
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_233

    .line 460
    const-string v2, "LGT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 461
    const-string v25, "-4"

    goto/16 :goto_233

    .line 463
    :cond_2ff
    const-string v25, "-1"

    goto/16 :goto_233

    .line 480
    :cond_303
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    if-eqz v2, :cond_321

    .line 481
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v26, v23

    .line 349
    :goto_31d
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_18

    .line 486
    :cond_321
    :try_start_321
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v2 .. v9}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v26, v23
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_343} :catch_344

    goto :goto_31d

    .line 489
    :catch_344
    move-exception v20

    .line 497
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception raised during adding CallLog entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x0

    aput-object v2, v26, v23

    goto :goto_31d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 339
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 511
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 512
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_10

    .line 513
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 516
    .end local v3           #uri:Landroid/net/Uri;
    :cond_13
    return-void
.end method
