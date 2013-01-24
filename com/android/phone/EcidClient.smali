.class public Lcom/android/phone/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# static fields
.field static cnapDelivered:Z

.field static m_idPendingIntent:I

.field static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private businessName:Ljava/lang/String;

.field public m_bFriends:Z

.field private m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field m_callInfo:Lcom/android/internal/telephony/CallerInfo;

.field public m_callerId:Ljava/lang/String;

.field m_ccOwner:Lcom/android/phone/CallCard;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lConnectionTime:J

.field public m_lastName:Ljava/lang/String;

.field m_pending:Landroid/app/PendingIntent;

.field public m_phoneNumber:Ljava/lang/String;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlPicture:Ljava/lang/String;

.field private strDisplay:Ljava/lang/String;

.field private strFname:Ljava/lang/String;

.field private strLname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 68
    sput v0, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 93
    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 94
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 95
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method static callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .registers 3
    .parameter "oInfo"

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v1, p0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_9

    move-object v0, p0

    .line 915
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 918
    .end local p0
    :cond_8
    :goto_8
    return-object v0

    .line 916
    .restart local p0
    :cond_9
    instance-of v1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_8

    .line 917
    check-cast p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_8
.end method

.method static cancelLookupQueriesInSet(Ljava/util/Set;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez p0, :cond_3

    .line 395
    :cond_2
    return-void

    .line 382
    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 387
    .local v1, key:Ljava/lang/Long;
    :try_start_13
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EcidClient;

    .line 388
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v2, :cond_7

    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v3, :cond_7

    .line 390
    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_7

    .line 392
    .end local v2           #thisObj:Lcom/android/phone/EcidClient;
    :catch_27
    move-exception v3

    goto :goto_7
.end method

.method public static endAllLookupQueries()V
    .registers 7

    .prologue
    .line 355
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v4

    .line 356
    :try_start_3
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EcidClient;

    .line 357
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v2, :cond_d

    .line 359
    if-eqz v2, :cond_d

    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_48

    if-eqz v3, :cond_d

    .line 363
    :try_start_21
    const-string v3, "Phone-ECID"

    const-string v5, "try : endAllLookUpQueries()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_48
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_d

    .line 365
    :catch_2e
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2f
    const-string v3, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch : endAllLookUpQueries()-->  nullPointerException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 373
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #thisObj:Lcom/android/phone/EcidClient;
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_48

    throw v3

    .line 372
    :cond_4b
    :try_start_4b
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 373
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_48

    .line 374
    return-void
.end method

.method public static endLookupQuery(J)V
    .registers 6
    .parameter "lConnectionTime"

    .prologue
    .line 340
    :try_start_0
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1f

    .line 341
    :try_start_3
    sget-object v1, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    .line 342
    .local v0, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1a

    .line 345
    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 347
    :cond_1a
    monitor-exit v2

    .line 350
    .end local v0           #thisObj:Lcom/android/phone/EcidClient;
    :goto_1b
    return-void

    .line 347
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 348
    :catch_1f
    move-exception v1

    goto :goto_1b
.end method

.method static getClient(J)Lcom/android/phone/EcidClient;
    .registers 4
    .parameter "lConnectionTime"

    .prologue
    .line 133
    sget-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    return-object v0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;
    .registers 6
    .parameter "ci"
    .parameter "lConnectionTime"

    .prologue
    .line 138
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_16

    .line 140
    invoke-static {p1, p2}, Lcom/android/phone/EcidClient;->getClient(J)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 141
    .local v0, cid:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_16

    .line 143
    if-eqz p0, :cond_13

    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v1, p0, :cond_13

    .line 150
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :goto_12
    return-object v0

    .line 147
    .restart local v0       #cid:Lcom/android/phone/EcidClient;
    :cond_13
    invoke-static {p1, p2}, Lcom/android/phone/EcidClient;->endLookupQuery(J)V

    .line 150
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static handleResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .registers 10
    .parameter "ctx"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 448
    const-string v3, "id"

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 450
    .local v0, lConnectionTime:J
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EcidClient;

    .line 451
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    if-nez v2, :cond_17

    .line 457
    :goto_16
    return-void

    .line 456
    :cond_17
    invoke-virtual {v2, p0, p2, p3}, Lcom/android/phone/EcidClient;->handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_16
.end method

.method static removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V
    .registers 8
    .parameter
    .parameter "call"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/internal/telephony/Call;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p1, :cond_1d

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1e

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 432
    :cond_a
    :goto_a
    if-eqz v0, :cond_1d

    .line 434
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 436
    .local v1, lConnectionTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1d

    .line 437
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #lConnectionTime:J
    :cond_1d
    return-void

    .line 428
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    :cond_1e
    const/4 v3, 0x1

    if-ne p2, v3, :cond_a

    .line 430
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_a
.end method

.method public static sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z
    .registers 23
    .parameter "o"
    .parameter "ownerActivity"
    .parameter "ccOwner"
    .parameter "nResultMessage"
    .parameter "bIncoming"
    .parameter "bSystemProvided"
    .parameter "bIsNANP"
    .parameter "bIsRoaming"
    .parameter "lConnectionTime"
    .parameter "conn"

    .prologue
    .line 210
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 212
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p10, :cond_e

    .line 215
    if-eqz v2, :cond_e

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 219
    :cond_e
    if-eqz v2, :cond_18

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v9, :cond_18

    if-eqz p1, :cond_18

    if-nez p2, :cond_1a

    .line 220
    :cond_18
    const/4 v9, 0x0

    .line 334
    :goto_19
    return v9

    .line 222
    :cond_1a
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 224
    const/4 v9, 0x0

    goto :goto_19

    .line 226
    :cond_28
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v6, resultTemplate:Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ecid.query:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 229
    const-string v9, "id"

    move-wide/from16 v0, p8

    invoke-virtual {v6, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 230
    const/4 v9, 0x0

    invoke-virtual {p1, p3, v6, v9}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 232
    .local v5, result:Landroid/app/PendingIntent;
    if-nez v5, :cond_5d

    .line 235
    const/4 v9, 0x0

    goto :goto_19

    .line 238
    :cond_5d
    const/4 v8, 0x0

    .line 239
    .local v8, thisObj:Lcom/android/phone/EcidClient;
    const/4 v3, 0x0

    .line 248
    .local v3, nFlags:I
    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;

    move-result-object v8

    .line 251
    if-nez v8, :cond_e1

    .line 255
    new-instance v8, Lcom/android/phone/EcidClient;

    .end local v8           #thisObj:Lcom/android/phone/EcidClient;
    invoke-direct {v8}, Lcom/android/phone/EcidClient;-><init>()V

    .line 256
    .restart local v8       #thisObj:Lcom/android/phone/EcidClient;
    iput-object v4, v8, Lcom/android/phone/EcidClient;->m_phoneNumber:Ljava/lang/String;

    .line 257
    iput-object p2, v8, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    .line 258
    iput-object v2, v8, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 259
    iput-object v5, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    .line 260
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 261
    move-wide/from16 v0, p8

    iput-wide v0, v8, Lcom/android/phone/EcidClient;->m_lConnectionTime:J

    .line 262
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 265
    sget-object v10, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v10

    .line 266
    :try_start_82
    sget-object v9, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    monitor-exit v10
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_dc

    .line 273
    if-eqz p5, :cond_df

    const/4 v9, 0x2

    :goto_8f
    or-int/2addr v3, v9

    .line 274
    if-nez p6, :cond_94

    .line 275
    or-int/lit8 v3, v3, 0x4

    .line 277
    :cond_94
    if-eqz p4, :cond_98

    .line 278
    or-int/lit8 v3, v3, 0x20

    .line 306
    :cond_98
    :goto_98
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v7, serviceIntent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.cequint.ecid"

    const-string v11, "com.cequint.ecid.CallerIdLookupAsync"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 308
    const-string v9, "pCallerID"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c0

    .line 310
    const-string v9, "pCNAM"

    iget-object v10, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 318
    :cond_c0
    if-eqz p7, :cond_c4

    .line 322
    or-int/lit8 v3, v3, 0x10

    .line 325
    :cond_c4
    const-string v9, "nFlags"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v9, "pending"

    iget-object v10, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p1, v7}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_d9

    .line 330
    invoke-static/range {p8 .. p9}, Lcom/android/phone/EcidClient;->endLookupQuery(J)V

    .line 334
    :cond_d9
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 267
    .end local v7           #serviceIntent:Landroid/content/Intent;
    :catchall_dc
    move-exception v9

    :try_start_dd
    monitor-exit v10
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v9

    .line 273
    :cond_df
    const/4 v9, 0x1

    goto :goto_8f

    .line 284
    :cond_e1
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 286
    sget-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    if-nez v9, :cond_f4

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f4

    .line 289
    or-int/lit8 v3, v3, 0x20

    goto :goto_98

    .line 290
    :cond_f4
    sget-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10a

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 292
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 293
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_19

    .line 296
    :cond_10a
    if-eqz p10, :cond_117

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_117

    .line 298
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 301
    :cond_117
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_19
.end method

.method public static setEcidDisplay(JLcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .registers 14
    .parameter "lConnectionTime"
    .parameter "info"
    .parameter "tvCityId"
    .parameter "ivConnectionIcon"
    .parameter "bIncoming"

    .prologue
    const/4 v7, 0x0

    .line 631
    const/16 v2, 0x8

    .line 632
    .local v2, nDisplayCityId:I
    const/4 v1, 0x0

    .line 634
    .local v1, nConnectionIconVisibility:I
    invoke-static {p0, p1}, Lcom/android/phone/EcidClient;->getClient(J)Lcom/android/phone/EcidClient;

    move-result-object v3

    .line 637
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v3, :cond_ad

    .line 639
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->dbgLogData()V

    .line 641
    iput-boolean v7, v3, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 642
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 643
    iput-boolean v7, v3, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 645
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasCityId()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 649
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 651
    iget-object v4, v3, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 654
    iget-object v4, v3, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/EcidClient;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, cityId:Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    const/4 v2, 0x0

    .line 660
    .end local v0           #cityId:Ljava/lang/String;
    :cond_32
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasFirstName()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 663
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getFirstName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 664
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displaying First Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_58
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasLastName()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 673
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getLastName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 674
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displaying Last Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_7e
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasBussName()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 683
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getBussinessName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 684
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displaying Bussiness Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_a4
    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bFriends:Z

    if-eqz v4, :cond_bc

    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    if-eqz v4, :cond_bc

    .line 689
    const/4 v1, 0x3

    .line 699
    :cond_ad
    :goto_ad
    if-eqz p3, :cond_b2

    .line 700
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    :cond_b2
    if-eqz p4, :cond_bb

    .line 704
    packed-switch v1, :pswitch_data_e6

    .line 719
    const/4 v4, 0x4

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    :cond_bb
    :goto_bb
    return-void

    .line 691
    :cond_bc
    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bFriends:Z

    if-eqz v4, :cond_c2

    .line 692
    const/4 v1, 0x2

    goto :goto_ad

    .line 694
    :cond_c2
    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    if-eqz v4, :cond_ad

    .line 695
    const/4 v1, 0x1

    goto :goto_ad

    .line 706
    :pswitch_c8
    const v4, 0x7f0203ac

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 707
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_bb

    .line 710
    :pswitch_d2
    const v4, 0x7f0202ab

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 711
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_bb

    .line 714
    :pswitch_dc
    const v4, 0x7f0203ad

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_bb

    .line 704
    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_d2
        :pswitch_dc
    .end packed-switch
.end method

.method static truncateCityId(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "city_id"

    .prologue
    const/16 v5, 0x2c

    const/4 v6, 0x0

    .line 954
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 955
    .local v2, len_city:I
    const/16 v0, 0x11

    .line 956
    .local v0, MAX_LEN:I
    if-lt v2, v0, :cond_77

    .line 957
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_77

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x4

    if-ne v4, v5, :cond_77

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_77

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 958
    add-int/lit8 v4, v2, -0x4

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, city_name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, state_abbr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xc

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".., "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 963
    .end local v1           #city_name:Ljava/lang/String;
    .end local v3           #state_abbr:Ljava/lang/String;
    :cond_77
    return-object p0
.end method

.method static updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter "oOld"
    .parameter "oNew"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 156
    .local v1, ciOld:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p1}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 158
    .local v0, ciNew:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 160
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, phoneNumberOld:Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, phoneNumberNew:Ljava/lang/String;
    if-eqz v4, :cond_1c

    if-nez v3, :cond_1d

    .line 189
    .end local v3           #phoneNumberNew:Ljava/lang/String;
    .end local v4           #phoneNumberOld:Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-void

    .line 169
    .restart local v3       #phoneNumberNew:Ljava/lang/String;
    .restart local v4       #phoneNumberOld:Ljava/lang/String;
    :cond_1d
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 171
    sget-object v6, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/EcidClient;

    .line 172
    .local v5, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v5, :cond_1c

    .line 174
    iget-object v6, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v6, v1, :cond_2d

    .line 177
    iput-object v0, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1c
.end method

.method public static updateLookupQueries(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 403
    if-nez p0, :cond_3

    .line 416
    :goto_2
    return-void

    .line 406
    :cond_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 408
    .local v1, phoneType:I
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v3

    .line 409
    :try_start_a
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 410
    .local v0, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 411
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 412
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 414
    invoke-static {v0}, Lcom/android/phone/EcidClient;->cancelLookupQueriesInSet(Ljava/util/Set;)V

    .line 415
    monitor-exit v3

    goto :goto_2

    .end local v0           #keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v2
.end method


# virtual methods
.method public canUpdateContactPhoto()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 527
    :cond_5
    :goto_5
    return v0

    .line 519
    :cond_6
    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v1, :cond_5

    .line 523
    :cond_16
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_5

    .line 527
    :cond_22
    const/4 v0, 0x1

    goto :goto_5
.end method

.method dbgLogData()V
    .registers 1

    .prologue
    .line 940
    return-void
.end method

.method public getBussinessName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 623
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    .line 625
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getCityStateDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_2b
    return-object v0

    .line 579
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 582
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    goto :goto_2b

    .line 585
    :cond_37
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 588
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    goto :goto_2b

    .line 592
    :cond_42
    const-string v0, ""

    goto :goto_2b
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 601
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    .line 603
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "ctx"
    .parameter "strImageUrl"

    .prologue
    .line 498
    const/4 v3, 0x0

    .line 500
    .local v3, pic:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 503
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 504
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v3

    .line 510
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_17
    :goto_17
    return-object v3

    .line 506
    :catch_18
    move-exception v1

    .line 508
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_17
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 612
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    .line 614
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 6
    .parameter "ctx"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 462
    const-string v0, "cid_pNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_callerId:Ljava/lang/String;

    .line 463
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_9f

    .line 466
    const-string v0, "cid_pName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    .line 467
    const-string v0, "cid_pCompany"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    .line 468
    const-string v0, "cid_pFirstName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    .line 469
    const-string v0, "cid_pLastName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    .line 470
    const-string v0, "cid_pCityName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    .line 471
    const-string v0, "cid_pStateName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    .line 472
    const-string v0, "cid_pStateAbbr"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    .line 473
    const-string v0, "cid_pCountryName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    .line 474
    const-string v0, "cid_pImage"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    .line 475
    const-string v0, "cid_bSameNetwork"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    .line 476
    const-string v0, "cid_bFriends"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bFriends:Z

    .line 477
    const-string v0, "cid_bPreferCidImage"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    .line 478
    const-string v0, "cid_pDisplayName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/EcidClient;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    .line 484
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    iget-object v0, v0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_94

    .line 485
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    iget-object v0, v0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :cond_94
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 494
    :cond_9f
    return-void
.end method

.method hasBussName()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 750
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_bizName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    :goto_2b
    return v1

    :cond_2c
    move v0, v2

    .line 750
    goto :goto_18

    :cond_2e
    move v1, v2

    .line 751
    goto :goto_2b
.end method

.method hasCityId()Z
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method hasFirstName()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_firstName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    :goto_2b
    return v1

    :cond_2c
    move v0, v2

    .line 735
    goto :goto_18

    :cond_2e
    move v1, v2

    .line 736
    goto :goto_2b
.end method

.method hasLastName()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 742
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_lastName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    :goto_2b
    return v1

    :cond_2c
    move v0, v2

    .line 742
    goto :goto_18

    :cond_2e
    move v1, v2

    .line 743
    goto :goto_2b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public updateCallerInfo(Landroid/content/Context;)Z
    .registers 7
    .parameter "ctx"

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, bModified:Z
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_2c

    .line 536
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 539
    :cond_25
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 540
    const/4 v0, 0x1

    .line 560
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->canUpdateContactPhoto()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_51

    .line 562
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 563
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 566
    const/4 v0, 0x1

    .line 568
    :cond_51
    return v0

    .line 543
    :cond_52
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    sget-boolean v1, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    if-eqz v1, :cond_2c

    .line 546
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const-string v2, "Unknown Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 549
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 550
    const/4 v0, 0x1

    goto :goto_2c
.end method
