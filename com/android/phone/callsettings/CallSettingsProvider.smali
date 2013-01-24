.class public Lcom/android/phone/callsettings/CallSettingsProvider;
.super Landroid/content/ContentProvider;
.source "CallSettingsProvider.java"


# instance fields
.field private autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

.field autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

.field private autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

.field autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

.field private autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

.field autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

.field private callreminder:Lcom/android/phone/callsettings/CallReminderDB;

.field callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

.field private ipcall:Lcom/android/phone/callsettings/IpCallDB;

.field ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

.field private ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

.field ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

.field private registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

.field registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

.field private rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

.field rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 128
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 132
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 135
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private appendRowId(Ljava/lang/String;J)Ljava/lang/String;
    .registers 7
    .parameter "selection"
    .parameter "id"

    .prologue
    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    const-string v0, ""

    goto :goto_2e
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 1012
    const-string v0, "CallSettingsProvider"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v4, 0x1

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, count:I
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 259
    const/4 v2, 0x0

    .line 379
    :goto_9
    return v2

    .line 262
    :cond_a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_242

    .line 374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :sswitch_2c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v4, :cond_4a

    .line 267
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 378
    :goto_3c
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v2, v0

    .line 379
    goto :goto_9

    .line 269
    :cond_4a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 273
    goto :goto_3c

    .line 279
    .end local v1           #id:Ljava/lang/String;
    :sswitch_70
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_82

    .line 280
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_videocall_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 282
    :cond_82
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_videocall_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 286
    goto :goto_3c

    .line 291
    .end local v1           #id:Ljava/lang/String;
    :sswitch_a8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_bb

    .line 292
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_outgoingcall_num"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_3c

    .line 294
    :cond_bb
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_outgoingcall_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 298
    goto/16 :goto_3c

    .line 304
    .end local v1           #id:Ljava/lang/String;
    :sswitch_e2
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_f5

    .line 305
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3c

    .line 307
    :cond_f5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "reject_msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 311
    goto/16 :goto_3c

    .line 316
    .end local v1           #id:Ljava/lang/String;
    :sswitch_11c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_130

    .line 317
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "call_reminder"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3c

    .line 319
    :cond_130
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "call_reminder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 322
    goto/16 :goto_3c

    .line 327
    .end local v1           #id:Ljava/lang/String;
    :sswitch_157
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_16b

    .line 328
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_ussd"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3c

    .line 330
    :cond_16b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_ussd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 334
    goto/16 :goto_3c

    .line 339
    .end local v1           #id:Ljava/lang/String;
    :sswitch_192
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1a6

    .line 340
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_reply_msg"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3c

    .line 342
    :cond_1a6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "register_reply_msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 346
    goto/16 :goto_3c

    .line 352
    .end local v1           #id:Ljava/lang/String;
    :sswitch_1cd
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1e0

    .line 353
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3c

    .line 355
    :cond_1e0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 359
    goto/16 :goto_3c

    .line 363
    .end local v1           #id:Ljava/lang/String;
    :sswitch_207
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_21b

    .line 364
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_cdma"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3c

    .line 366
    :cond_21b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    .restart local v1       #id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ip_call_cdma"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 370
    goto/16 :goto_3c

    .line 262
    :sswitch_data_242
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_70
        0x4 -> :sswitch_70
        0x5 -> :sswitch_e2
        0x6 -> :sswitch_e2
        0x7 -> :sswitch_1cd
        0x8 -> :sswitch_1cd
        0x9 -> :sswitch_207
        0xa -> :sswitch_207
        0xb -> :sswitch_157
        0xc -> :sswitch_157
        0xd -> :sswitch_192
        0xe -> :sswitch_192
        0xf -> :sswitch_11c
        0x10 -> :sswitch_11c
        0x64 -> :sswitch_a8
        0x65 -> :sswitch_a8
    .end sparse-switch
.end method

.method public getDatabase(Landroid/net/Uri;)Z
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_d8

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :sswitch_23
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 151
    :try_start_27
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2f} :catch_31

    .line 249
    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    :goto_30
    return v1

    .line 152
    :catch_31
    move-exception v0

    .line 153
    .local v0, exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 161
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_3a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 163
    :try_start_3e
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_2f

    .line 164
    :catch_47
    move-exception v0

    .line 165
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 173
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_50
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 175
    :try_start_54
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_5c} :catch_5d

    goto :goto_2f

    .line 176
    :catch_5d
    move-exception v0

    .line 177
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 185
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_66
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 187
    :try_start_6a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_72} :catch_73

    goto :goto_2f

    .line 188
    :catch_73
    move-exception v0

    .line 189
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 197
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_7c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 199
    :try_start_80
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder:Lcom/android/phone/callsettings/CallReminderDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallReminderDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_88
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_88} :catch_89

    goto :goto_2f

    .line 200
    :catch_89
    move-exception v0

    .line 201
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 212
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_92
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 214
    :try_start_96
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RegisterUssdDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_96 .. :try_end_9e} :catch_9f

    goto :goto_2f

    .line 215
    :catch_9f
    move-exception v0

    .line 216
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 225
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_a8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 227
    :try_start_ac
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall:Lcom/android/phone/callsettings/IpCallDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpCallDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ac .. :try_end_b4} :catch_b6

    goto/16 :goto_2f

    .line 228
    :catch_b6
    move-exception v0

    .line 229
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 236
    .end local v0           #exception:Landroid/database/sqlite/SQLiteException;
    :sswitch_c0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2f

    .line 238
    :try_start_c4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpCallCdmaDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c4 .. :try_end_cc} :catch_ce

    goto/16 :goto_2f

    .line 239
    :catch_ce
    move-exception v0

    .line 240
    .restart local v0       #exception:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 146
    :sswitch_data_d8
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_23
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_66
        0x6 -> :sswitch_66
        0x7 -> :sswitch_a8
        0x8 -> :sswitch_a8
        0x9 -> :sswitch_c0
        0xa -> :sswitch_c0
        0xb -> :sswitch_92
        0xc -> :sswitch_92
        0xd -> :sswitch_92
        0xe -> :sswitch_92
        0xf -> :sswitch_7c
        0x10 -> :sswitch_7c
        0x64 -> :sswitch_50
        0x65 -> :sswitch_50
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :sswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.com.android.phone.callsettings"

    .line 413
    :goto_24
    return-object v0

    :sswitch_25
    const-string v0, "vnd.android.cursor.item/vnd.com.android.phone.callsettings"

    goto :goto_24

    .line 385
    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_25
        0x3 -> :sswitch_22
        0x4 -> :sswitch_25
        0x5 -> :sswitch_22
        0x6 -> :sswitch_25
        0x8 -> :sswitch_25
        0xa -> :sswitch_25
        0xb -> :sswitch_22
        0xc -> :sswitch_25
        0xd -> :sswitch_22
        0xe -> :sswitch_25
        0xf -> :sswitch_22
        0x10 -> :sswitch_25
        0x64 -> :sswitch_22
        0x65 -> :sswitch_25
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 425
    const/4 v3, 0x0

    .line 427
    .local v3, newUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 601
    :goto_9
    return-object v4

    .line 431
    :cond_a
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    sparse-switch v5, :sswitch_data_21c

    .line 599
    :goto_13
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v4, v3

    .line 601
    goto :goto_9

    .line 437
    :sswitch_20
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_42

    .line 438
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 441
    :cond_42
    const-string v5, "reject_match"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_54

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, MATCH_EQUAL:I
    const-string v5, "reject_match"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    .end local v0           #MATCH_EQUAL:I
    :cond_54
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 450
    .local v1, id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 452
    goto :goto_13

    .line 460
    .end local v1           #id:J
    :sswitch_63
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_85

    .line 461
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    :cond_85
    const-string v5, "reject_match"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_97

    .line 465
    const/4 v0, 0x0

    .line 466
    .restart local v0       #MATCH_EQUAL:I
    const-string v5, "reject_match"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    .end local v0           #MATCH_EQUAL:I
    :cond_97
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_videocall_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 473
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 475
    goto/16 :goto_13

    .line 482
    .end local v1           #id:J
    :sswitch_a7
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_ca

    .line 483
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 486
    :cond_ca
    const-string v5, "reject_match"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_dc

    .line 487
    const/4 v0, 0x0

    .line 488
    .restart local v0       #MATCH_EQUAL:I
    const-string v5, "reject_match"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    .end local v0           #MATCH_EQUAL:I
    :cond_dc
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_outgoingcall_num"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 495
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 497
    goto/16 :goto_13

    .line 505
    .end local v1           #id:J
    :sswitch_ec
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_10e

    .line 506
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 510
    :cond_10e
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "reject_msg"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 513
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 515
    goto/16 :goto_13

    .line 521
    .end local v1           #id:J
    :sswitch_11e
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xf

    if-eq v5, v6, :cond_141

    .line 522
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_141
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "call_reminder"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 528
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 529
    goto/16 :goto_13

    .line 536
    .end local v1           #id:J
    :sswitch_151
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_174

    .line 537
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 541
    :cond_174
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "register_ussd"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 544
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 546
    goto/16 :goto_13

    .line 553
    .end local v1           #id:J
    :sswitch_184
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1a7

    .line 554
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 558
    :cond_1a7
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "register_reply_msg"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 561
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERREPLYMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 563
    goto/16 :goto_13

    .line 570
    .end local v1           #id:J
    :sswitch_1b7
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1d9

    .line 571
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 575
    :cond_1d9
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ip_call"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 578
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 580
    goto/16 :goto_13

    .line 585
    .end local v1           #id:J
    :sswitch_1e9
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_20c

    .line 586
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 590
    :cond_20c
    iget-object v5, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ip_call_cdma"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 593
    .restart local v1       #id:J
    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 595
    goto/16 :goto_13

    .line 431
    :sswitch_data_21c
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_20
        0x3 -> :sswitch_63
        0x4 -> :sswitch_63
        0x5 -> :sswitch_ec
        0x6 -> :sswitch_ec
        0x7 -> :sswitch_1b7
        0x8 -> :sswitch_1b7
        0x9 -> :sswitch_1e9
        0xa -> :sswitch_1e9
        0xb -> :sswitch_151
        0xc -> :sswitch_151
        0xd -> :sswitch_184
        0xe -> :sswitch_184
        0xf -> :sswitch_11e
        0x10 -> :sswitch_11e
        0x64 -> :sswitch_a7
        0x65 -> :sswitch_a7
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 607
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 609
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_num"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_num/#"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 612
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_videocall_num"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 613
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_videocall_num/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_outgoingcall_num"

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 616
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_outgoingcall_num/#"

    const/16 v4, 0x65

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 618
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_msg"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 619
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "reject_msg/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 622
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "call_reminder"

    const/16 v4, 0xf

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 623
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "call_reminder/#"

    const/16 v4, 0x10

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 626
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_ussd"

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 627
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_ussd/#"

    const/16 v4, 0xc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 629
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_reply_msg"

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 630
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "register_reply_msg/#"

    const/16 v4, 0xe

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 633
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 634
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 635
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call_cdma"

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 636
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.android.phone.callsettings"

    const-string v3, "ip_call_cdma/#"

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    new-instance v1, Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    .line 640
    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall:Lcom/android/phone/callsettings/AutoRejectVideoCallDB;

    .line 647
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, buildcarrier:Ljava/lang/String;
    const-string v1, "aegis2vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 649
    new-instance v1, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    .line 651
    :cond_f6
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    .line 653
    new-instance v1, Lcom/android/phone/callsettings/CallReminderDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/CallReminderDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder:Lcom/android/phone/callsettings/CallReminderDB;

    .line 655
    new-instance v1, Lcom/android/phone/callsettings/RegisterUssdDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/RegisterUssdDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd:Lcom/android/phone/callsettings/RegisterUssdDB;

    .line 658
    new-instance v1, Lcom/android/phone/callsettings/IpCallDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/IpCallDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall:Lcom/android/phone/callsettings/IpCallDB;

    .line 659
    new-instance v1, Lcom/android/phone/callsettings/IpCallCdmaDB;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/IpCallCdmaDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma:Lcom/android/phone/callsettings/IpCallCdmaDB;

    .line 661
    const/4 v1, 0x0

    return v1
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 721
    const-string v0, "LOWMEMORY"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallSettingsProvider;->log(Ljava/lang/String;)V

    .line 722
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 724
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_14

    .line 725
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 729
    :cond_14
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 734
    const/4 v8, 0x0

    .line 736
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 737
    const/4 v0, 0x0

    .line 865
    :goto_8
    return-object v0

    .line 740
    :cond_9
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_1ba

    .line 861
    :goto_12
    if-eqz v8, :cond_1f

    .line 862
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1f
    move-object v0, v8

    .line 865
    goto :goto_8

    .line 743
    :sswitch_21
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 744
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 745
    .local v9, id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 750
    .end local v9           #id:J
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_num"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 752
    goto :goto_12

    .line 756
    :sswitch_4d
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_69

    .line 757
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 758
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 763
    .end local v9           #id:J
    :cond_69
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_videocall_num"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 765
    goto :goto_12

    .line 769
    :sswitch_79
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_96

    .line 770
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 771
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 776
    .end local v9           #id:J
    :cond_96
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_outgoingcall_num"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 778
    goto/16 :goto_12

    .line 782
    :sswitch_a7
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c3

    .line 783
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 784
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 786
    .end local v9           #id:J
    :cond_c3
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "reject_msg"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 788
    goto/16 :goto_12

    .line 793
    :sswitch_d4
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f1

    .line 794
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 795
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 797
    .end local v9           #id:J
    :cond_f1
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "call_reminder"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 799
    goto/16 :goto_12

    .line 812
    :sswitch_102
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_11f

    .line 813
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 814
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 818
    .end local v9           #id:J
    :cond_11f
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "register_ussd"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 821
    goto/16 :goto_12

    .line 826
    :sswitch_130
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_14d

    .line 827
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 828
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 832
    .end local v9           #id:J
    :cond_14d
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "register_reply_msg"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 835
    goto/16 :goto_12

    .line 840
    :sswitch_15e
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17b

    .line 841
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 842
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 844
    .end local v9           #id:J
    :cond_17b
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ip_call"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 846
    goto/16 :goto_12

    .line 849
    :sswitch_18c
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a9

    .line 850
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 851
    .restart local v9       #id:J
    invoke-direct {p0, p3, v9, v10}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 853
    .end local v9           #id:J
    :cond_1a9
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ip_call_cdma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_12

    .line 740
    :sswitch_data_1ba
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_21
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_a7
        0x6 -> :sswitch_a7
        0x7 -> :sswitch_15e
        0x8 -> :sswitch_15e
        0x9 -> :sswitch_18c
        0xa -> :sswitch_18c
        0xb -> :sswitch_102
        0xc -> :sswitch_102
        0xd -> :sswitch_130
        0xe -> :sswitch_130
        0xf -> :sswitch_d4
        0x10 -> :sswitch_d4
        0x64 -> :sswitch_79
        0x65 -> :sswitch_79
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x1

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsProvider;->getDatabase(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 875
    const/4 v0, 0x0

    .line 1002
    :goto_8
    return v0

    .line 878
    :cond_9
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_1de

    .line 996
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 883
    :sswitch_2b
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v5, :cond_48

    .line 884
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1000
    .local v0, count:I
    :goto_3b
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_8

    .line 887
    .end local v0           #count:I
    :cond_48
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 888
    .local v1, id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 891
    .restart local v0       #count:I
    goto :goto_3b

    .line 897
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_63
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_75

    .line 898
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_videocall_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_3b

    .line 901
    .end local v0           #count:I
    :cond_75
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 902
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectvideocall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_videocall_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 905
    .restart local v0       #count:I
    goto :goto_3b

    .line 911
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_90
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_a3

    .line 912
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_outgoingcall_num"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_3b

    .line 915
    .end local v0           #count:I
    :cond_a3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 916
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_outgoingcall_num"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 919
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 925
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_bf
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d2

    .line 926
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 928
    .end local v0           #count:I
    :cond_d2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 929
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "reject_msg"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 932
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 938
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_ee
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_102

    .line 939
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "call_reminder"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 941
    .end local v0           #count:I
    :cond_102
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 942
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->callreminder_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "call_reminder"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 945
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 951
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_11e
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_132

    .line 952
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_ussd"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 954
    .end local v0           #count:I
    :cond_132
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 955
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_ussd"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 958
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 963
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_14e
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_162

    .line 964
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_reply_msg"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 966
    .end local v0           #count:I
    :cond_162
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 967
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->registerussd_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "register_reply_msg"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 970
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 976
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_17e
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_191

    .line 977
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 979
    .end local v0           #count:I
    :cond_191
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 980
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 983
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 986
    .end local v0           #count:I
    .end local v1           #id:J
    :sswitch_1ad
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1c1

    .line 987
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_cdma"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 989
    .end local v0           #count:I
    :cond_1c1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 990
    .restart local v1       #id:J
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsProvider;->ipcallcdma_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ip_call_cdma"

    invoke-direct {p0, p3, v1, v2}, Lcom/android/phone/callsettings/CallSettingsProvider;->appendRowId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 993
    .restart local v0       #count:I
    goto/16 :goto_3b

    .line 878
    nop

    :sswitch_data_1de
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_63
        0x4 -> :sswitch_63
        0x5 -> :sswitch_bf
        0x6 -> :sswitch_bf
        0x7 -> :sswitch_17e
        0x8 -> :sswitch_17e
        0x9 -> :sswitch_1ad
        0xa -> :sswitch_1ad
        0xb -> :sswitch_11e
        0xc -> :sswitch_11e
        0xd -> :sswitch_14e
        0xe -> :sswitch_14e
        0xf -> :sswitch_ee
        0x10 -> :sswitch_ee
        0x64 -> :sswitch_90
        0x65 -> :sswitch_90
    .end sparse-switch
.end method
