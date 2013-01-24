.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 392
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 393
    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 548
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V

    .line 549
    .local v0, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 550
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 551
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    .line 552
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    .line 558
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-eqz v1, :cond_50

    .line 559
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 562
    :cond_4e
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 566
    :cond_50
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo constructed for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 568
    return-object v0
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 14
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    move-object v8, p4

    .line 539
    check-cast v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 540
    .local v8, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    iget-wide v6, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 541
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 25
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_214

    .line 533
    :cond_3
    :goto_3
    return-void

    .line 416
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "call log query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 419
    if-eqz p3, :cond_3

    .line 422
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 423
    .local v15, missedCallCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call log cursor count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 424
    const/4 v2, 0x1

    if-lt v15, v2, :cond_3b

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    add-int/lit8 v3, v15, -0x1

    #setter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$502(Lcom/android/phone/NotificationMgr;I)I

    .line 428
    :cond_3b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v4

    .line 433
    .local v4, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v5, "query contacts for number: "

    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-nez v2, :cond_83

    const-string v2, "null"

    :goto_55
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v2

    const/4 v3, -0x2

    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "number"

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing call log cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 441
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 433
    .restart local v4       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_83
    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    goto :goto_55

    .line 445
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .end local v15           #missedCallCount:I
    :pswitch_86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "contact query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 448
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    move-object/from16 v4, p2

    .line 449
    check-cast v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 451
    .restart local v4       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    const/16 v18, 0x0

    .line 452
    .local v18, personUri:Landroid/net/Uri;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 453
    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 455
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 457
    .local v19, person_id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " found for phone: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 460
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 463
    .end local v19           #person_id:J
    :cond_fa
    if-eqz v18, :cond_136

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 470
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$700(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 481
    :goto_128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing contact cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 482
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 473
    :cond_136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "Failed to find Uri for obtaining photo. Just send notification without it."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-wide v11, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v5 .. v12}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_128

    .line 487
    .end local v4           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .end local v18           #personUri:Landroid/net/Uri;
    :pswitch_151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "MISSED_CALL query complete."

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 489
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    move-object/from16 v17, p2

    .line 490
    check-cast v17, Landroid/app/Notification$InboxStyle;

    .line 492
    .local v17, notiInBox:Landroid/app/Notification$InboxStyle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL query counts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 494
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1fe

    .line 496
    :cond_188
    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 497
    .local v14, lineString:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 498
    .local v16, name:Ljava/lang/String;
    const-string v2, "dormant_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 508
    .local v13, dormant:I
    const-string v2, "-1"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ca

    const-string v2, "-2"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ca

    const-string v2, "-3"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20e

    .line 511
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$700(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 515
    :cond_1d9
    :goto_1d9
    const/4 v2, 0x1

    if-ne v13, v2, :cond_1f1

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$700(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0763

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 519
    :cond_1f1
    if-eqz v14, :cond_1f8

    .line 520
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 522
    :cond_1f8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_188

    .line 525
    .end local v13           #dormant:I
    .end local v14           #lineString:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v3

    #calls: Lcom/android/phone/NotificationMgr;->registerMissedCallNotification(Landroid/app/Notification;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V

    .line 527
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 512
    .restart local v13       #dormant:I
    .restart local v14       #lineString:Ljava/lang/String;
    .restart local v16       #name:Ljava/lang/String;
    :cond_20e
    if-eqz v16, :cond_1d9

    .line 513
    move-object/from16 v14, v16

    goto :goto_1d9

    .line 414
    nop

    :pswitch_data_214
    .packed-switch -0x3
        :pswitch_151
        :pswitch_86
        :pswitch_4
    .end packed-switch
.end method
