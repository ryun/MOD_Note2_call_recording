.class public Lcom/android/phone/CallReminderAlarm;
.super Ljava/lang/Object;
.source "CallReminderAlarm.java"


# static fields
.field private static FROM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "callreminder_callerid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "callreminder_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "callreminder_rejecttime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "callreminder_alerttime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallReminderAlarm;->FROM:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J
    .registers 14
    .parameter "context"
    .parameter "number"
    .parameter "later"
    .parameter "date"

    .prologue
    .line 65
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, nomalize_number:Ljava/lang/String;
    const-string v6, "CallReminderAlarm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAlarm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, alert_time:Ljava/util/Calendar;
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    const/16 v6, 0xc

    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->add(II)V

    .line 72
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "callreminder_callerid"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "callreminder_enable"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v6, "callreminder_rejecttime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v6, "callreminder_alerttime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 80
    .local v3, new_uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 82
    .local v1, id:J
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->setAlarm(Landroid/content/Context;)V

    .line 84
    return-wide v1
.end method

.method public static cancelAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "number"
    .parameter "date"

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, nomalize_number:Ljava/lang/String;
    const/4 v3, 0x0

    .line 150
    .local v3, reject_time:Ljava/lang/String;
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 151
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.phone.CALLREMINDER_ALARM"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {p0, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 153
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 155
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v6, p1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v6, st_num:Ljava/util/StringTokenizer;
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v5, p2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v5, st_date:Ljava/util/StringTokenizer;
    :goto_29
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v7, where:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string v8, "CallReminderAlarm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallReminderAlarm cancelAlarm number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " date :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v8, "callreminder_callerid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " GLOB \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v8, "callreminder_rejecttime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_29

    .line 174
    .end local v7           #where:Ljava/lang/StringBuilder;
    :cond_a3
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->setNextAlarm(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public static clearAlarm(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method private static deleteAlarm(Landroid/content/Context;J)V
    .registers 6
    .parameter "context"
    .parameter "rowId"

    .prologue
    const/4 v2, 0x0

    .line 96
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 97
    .local v0, callreminderUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public static getCallReminderCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 130
    const-string v5, "callreminder_alerttime ASC"

    .line 131
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/CallReminderAlarm;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getNextRemindTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 194
    const-wide/16 v1, 0x0

    .line 195
    .local v1, time:J
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->getCallReminderCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 196
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1c

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_19

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 199
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 202
    :cond_19
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_1c
    return-wide v1
.end method

.method public static removeExpiredAndSetAlarm(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 229
    .local v6, now:J
    const-wide/16 v3, 0x0

    .line 230
    .local v3, id:J
    const-wide/16 v9, 0x0

    .line 231
    .local v9, time:J
    const-wide/16 v1, 0x0

    .line 232
    .local v1, date:J
    const/4 v8, 0x0

    .line 233
    .local v8, number:Ljava/lang/String;
    const/4 v5, 0x0

    .line 234
    .local v5, isEnabled:I
    const-string v11, "CallReminderAlarm"

    const-string v12, "CallReminderAlarm removeExpiredAndSetAlarm"

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->getCallReminderCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_73

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_70

    .line 238
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_70

    .line 240
    :cond_25
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 241
    const/4 v11, 0x4

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 242
    const/4 v11, 0x2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 243
    const/4 v11, 0x3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 244
    const/4 v11, 0x1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 245
    const-string v11, "CallReminderAlarm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CallReminderAlarm removeExpiredAndSetAlarm id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " time : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    cmp-long v11, v9, v6

    if-gez v11, :cond_6a

    .line 247
    invoke-static {p0, v8, v1, v2}, Lcom/android/phone/CallReminderAlarm;->updateLogs(Landroid/content/Context;Ljava/lang/String;J)V

    .line 248
    invoke-static {p0, v3, v4}, Lcom/android/phone/CallReminderAlarm;->deleteAlarm(Landroid/content/Context;J)V

    .line 250
    :cond_6a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_25

    .line 253
    :cond_70
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_73
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->getNextRemindTime(Landroid/content/Context;)J

    move-result-wide v9

    .line 258
    invoke-static {p0, v9, v10}, Lcom/android/phone/CallReminderAlarm;->setAlarm(Landroid/content/Context;J)V

    .line 260
    return-void
.end method

.method public static setAlarm(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 179
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->getNextRemindTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 180
    .local v0, time:J
    const-string v2, "CallReminderAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0, v0, v1}, Lcom/android/phone/CallReminderAlarm;->setAlarm(Landroid/content/Context;J)V

    .line 182
    return-void
.end method

.method private static setAlarm(Landroid/content/Context;J)V
    .registers 9
    .parameter "context"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v5, 0x0

    .line 185
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 186
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.phone.CALLREMINDER_ALARM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 188
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 189
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_22

    .line 190
    invoke-virtual {v0, v5, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 191
    :cond_22
    return-void
.end method

.method public static setNextAlarm(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 209
    const-wide/16 v1, 0x0

    .line 210
    .local v1, id:J
    const-wide/16 v3, 0x0

    .line 212
    .local v3, time:J
    invoke-static {p0}, Lcom/android/phone/CallReminderAlarm;->getCallReminderCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 213
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3b

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_38

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 216
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 217
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 218
    const-string v5, "CallReminderAlarm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallReminderAlarm setNextAlarm id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_3b
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_44

    .line 224
    invoke-static {p0, v3, v4}, Lcom/android/phone/CallReminderAlarm;->setAlarm(Landroid/content/Context;J)V

    .line 225
    :cond_44
    return-void
.end method

.method public static updateAlarm(Landroid/content/Context;Ljava/lang/String;JI)V
    .registers 15
    .parameter "context"
    .parameter "number"
    .parameter "date"
    .parameter "enable"

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .local v0, id:J
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, nomalize_number:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v5, where:Ljava/lang/StringBuilder;
    const-string v6, "callreminder_callerid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " GLOB \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "callreminder_rejecttime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, "callreminder_alerttime ASC"

    .line 118
    .local v3, sortOrder:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "callreminder_enable"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v6, "CallReminderAlarm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallReminderAlarm updateAlarm number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " date :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public static updateLogs(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 12
    .parameter "context"
    .parameter "number"
    .parameter "date"

    .prologue
    .line 263
    const-string v4, "content://logs/call"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 264
    .local v1, sendUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, nomalize_number:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v3, where_log:Ljava/lang/StringBuilder;
    const-string v4, "number GLOB \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    const-string v4, "CallReminderAlarm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallReminderAlarm updateLogs number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v4, "CallReminderAlarm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallReminderAlarm updateLogs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 275
    .local v2, valueslogs:Landroid/content/ContentValues;
    const-string v4, "remind_me_later_set"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/call"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    return-void
.end method
