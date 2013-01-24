.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field private static mMRBTBaseTime:J

.field private static sAlarmManager:Landroid/app/AlarmManager;

.field private static sPendingIntent:Landroid/app/PendingIntent;

.field private static sProfileState:I


# instance fields
.field private mCall:Lcom/android/internal/telephony/Call;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 59
    sput-object v1, Lcom/android/phone/CallTime;->sPendingIntent:Landroid/app/PendingIntent;

    .line 60
    sput-object v1, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    .line 64
    const-wide/high16 v0, -0x8000

    sput-wide v0, Lcom/android/phone/CallTime;->mMRBTBaseTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 72
    new-instance v0, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallTime;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    return p1
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .registers 13
    .parameter "call"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 181
    const-wide/16 v3, 0x0

    .line 182
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 186
    .local v2, count:I
    if-ne v2, v10, :cond_3d

    .line 187
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 190
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 203
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_18
    const-string v8, "vt_multimedia_ringback_tone_timer"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 204
    if-lt v2, v10, :cond_3c

    .line 205
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 206
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 208
    sget-wide v8, Lcom/android/phone/CallTime;->mMRBTBaseTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_52

    .line 210
    const-wide/16 v3, -0x1

    .line 219
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_3c
    :goto_3c
    return-wide v3

    .line 192
    :cond_3d
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3e
    if-ge v5, v2, :cond_18

    .line 193
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 196
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 197
    .local v6, t:J
    cmp-long v8, v6, v3

    if-lez v8, :cond_4f

    .line 198
    move-wide v3, v6

    .line 192
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 212
    .end local v5           #i:I
    .end local v6           #t:J
    :cond_52
    sget-wide v8, Lcom/android/phone/CallTime;->mMRBTBaseTime:J

    sub-long/2addr v3, v8

    goto :goto_3c
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 223
    const-string v0, "CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method static startMinuteMinderAlarm()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    const-wide/32 v4, 0xea60

    .line 298
    const v7, 0xea60

    .line 300
    .local v7, INTERVAL:I
    const-string v8, "min_minder"

    .line 301
    .local v8, MINUTE_MINDER:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "min_minder"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 304
    .local v14, minuteMinderTone:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMinuteMinderAlarm: minuteMinderTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 308
    .local v10, currentCall:Lcom/android/internal/telephony/Call;
    const/4 v0, 0x1

    if-ne v14, v0, :cond_7a

    sget-object v0, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_7a

    sget-object v0, Lcom/android/phone/CallTime;->sPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_7a

    if-eqz v10, :cond_7a

    .line 310
    const-string v0, "startMinuteMinderAlarm:.."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 312
    invoke-static {v10}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    rem-long/2addr v0, v4

    sub-long v11, v4, v0

    .line 313
    .local v11, firstAlertTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMinuteMinderAlarm:.. first "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " base "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 315
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-gez v0, :cond_7b

    .line 328
    .end local v11           #firstAlertTime:J
    :cond_7a
    :goto_7a
    return-void

    .line 318
    .restart local v11       #firstAlertTime:J
    :cond_7b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 319
    .local v9, context:Landroid/content/Context;
    const-string v0, "alarm"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    .line 321
    new-instance v13, Landroid/content/Intent;

    const-string v0, "com.android.phone.MINUTE_MINDER_ALARM"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v13, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-static {v9, v3, v13, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallTime;->sPendingIntent:Landroid/app/PendingIntent;

    .line 325
    sget-object v0, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v11

    sget-object v6, Lcom/android/phone/CallTime;->sPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_7a
.end method

.method static stopMinuteMinderAlarm()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 331
    sget-object v0, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/phone/CallTime;->sPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_19

    .line 332
    const-string v0, "stopMinuteMinderAlarm:.."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcom/android/phone/CallTime;->sPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 334
    sput-object v2, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    .line 335
    sput-object v2, Lcom/android/phone/CallTime;->sPendingIntent:Landroid/app/PendingIntent;

    .line 337
    :cond_19
    return-void
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter "call"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v2, :cond_11

    .line 171
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 172
    .local v0, duration:J
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    .line 174
    .end local v0           #duration:J
    :cond_11
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 167
    return-void
.end method

.method isMinuteMinderLaunched()Z
    .registers 2

    .prologue
    .line 350
    sget-object v0, Lcom/android/phone/CallTime;->sAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTraceReady()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 251
    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTraceRunning()Z
    .registers 3

    .prologue
    .line 255
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method periodicUpdateTimer()Z
    .registers 11

    .prologue
    const/4 v5, 0x1

    .line 130
    iget-boolean v6, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v6, :cond_41

    .line 131
    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, now:J
    iget-wide v6, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v8, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v6, v8

    .line 136
    .local v0, nextReport:J
    :goto_11
    cmp-long v6, v2, v0

    if-ltz v6, :cond_19

    .line 137
    iget-wide v6, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v6

    goto :goto_11

    .line 141
    :cond_19
    iget-object v6, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/phone/CallTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 142
    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 144
    iget-object v6, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v6, :cond_37

    .line 145
    iget-object v6, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 147
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v6, :cond_32

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_37

    .line 148
    :cond_32
    iget-object v6, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v6}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 152
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_37
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    .line 159
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :cond_40
    :goto_40
    return v5

    .line 157
    :cond_41
    const/4 v5, 0x0

    goto :goto_40
.end method

.method reset()V
    .registers 5

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 94
    const-wide/high16 v0, -0x8000

    sput-wide v0, Lcom/android/phone/CallTime;->mMRBTBaseTime:J

    .line 95
    return-void
.end method

.method setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .registers 4
    .parameter "call"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 88
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    .line 89
    return-void
.end method

.method startMRBTTimer()V
    .registers 5

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v2, :cond_17

    .line 341
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 343
    .local v1, connections:Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 344
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/phone/CallTime;->mMRBTBaseTime:J

    .line 347
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;
    :cond_17
    return-void
.end method

.method startTrace()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 259
    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v5, :cond_8b

    move v4, v5

    :goto_7
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8a

    .line 263
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v7, "phoneTrace"

    invoke-virtual {v4, v7, v6}, Lcom/android/phone/PhoneApp;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 264
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 265
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 267
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "callstate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, baseName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".data"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, dataFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, keyFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_6f

    .line 273
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 276
    :cond_6f
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_7d

    .line 278
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 281
    :cond_7d
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    .line 282
    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 283
    const/high16 v4, 0x80

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 285
    .end local v0           #baseName:Ljava/lang/String;
    .end local v1           #dataFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #keyFile:Ljava/lang/String;
    :cond_8a
    return-void

    :cond_8b
    move v4, v6

    .line 259
    goto/16 :goto_7
.end method

.method stopTrace()V
    .registers 3

    .prologue
    .line 289
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 290
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 291
    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 295
    :cond_10
    return-void
.end method
