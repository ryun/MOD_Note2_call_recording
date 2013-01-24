.class public Lcom/android/phone/DataUsageListener;
.super Ljava/lang/Object;
.source "DataUsageListener.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentThrottleRate:I

.field private mCurrentUsagePref:Landroid/preference/Preference;

.field private mDataUsed:J

.field private mEnd:Ljava/util/Calendar;

.field private mFilter:Landroid/content/IntentFilter;

.field mIsResumed:Z

.field private mPolicyThreshold:J

.field private mPolicyThrottleValue:I

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStart:Ljava/util/Calendar;

.field private mSummaryPref:Landroid/preference/Preference;

.field private mSummaryPrefEnabled:Z

.field private mThrottleManager:Landroid/net/ThrottleManager;

.field private mThrottleRatePref:Landroid/preference/Preference;

.field private mTimeFramePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .registers 7
    .parameter "context"
    .parameter "currentUsage"
    .parameter "timeFrame"
    .parameter "throttleRate"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 44
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    .line 45
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    .line 46
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    .line 47
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 48
    iput-boolean v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/DataUsageListener;->mIsResumed:Z

    .line 72
    iput-object p1, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 74
    iput-object p3, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    .line 75
    iput-object p4, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    .line 76
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->initialize()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
    .registers 6
    .parameter "context"
    .parameter "summary"
    .parameter "prefScreen"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 44
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    .line 45
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    .line 46
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    .line 47
    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 48
    iput-boolean v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/DataUsageListener;->mIsResumed:Z

    .line 63
    iput-object p1, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    .line 65
    iput-object p3, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 67
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->initialize()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DataUsageListener;JJJJ)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/android/phone/DataUsageListener;->updateUsageStats(JJJJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DataUsageListener;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updatePolicy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DataUsageListener;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/DataUsageListener;->updateThrottleRate(I)V

    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const-string v1, "throttle"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ThrottleManager;

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    .line 83
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    .line 84
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.POLL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.THROTTLE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.thrott.POLICY_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/android/phone/DataUsageListener$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DataUsageListener$1;-><init>(Lcom/android/phone/DataUsageListener;)V

    iput-object v0, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    return-void
.end method

.method private toReadable(J)Ljava/lang/String;
    .registers 15
    .parameter "data"

    .prologue
    const-wide/16 v9, 0x400

    .line 222
    const-wide/16 v2, 0x400

    .line 223
    .local v2, KB:J
    mul-long v4, v9, v2

    .line 224
    .local v4, MB:J
    mul-long v0, v9, v4

    .line 225
    .local v0, GB:J
    mul-long v6, v9, v0

    .line 228
    .local v6, TB:J
    cmp-long v9, p1, v2

    if-gez v9, :cond_22

    .line 229
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, ret:Ljava/lang/String;
    :goto_21
    return-object v8

    .line 230
    .end local v8           #ret:Ljava/lang/String;
    :cond_22
    cmp-long v9, p1, v4

    if-gez v9, :cond_3c

    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_21

    .line 232
    .end local v8           #ret:Ljava/lang/String;
    :cond_3c
    cmp-long v9, p1, v0

    if-gez v9, :cond_56

    .line 233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_21

    .line 234
    .end local v8           #ret:Ljava/lang/String;
    :cond_56
    cmp-long v9, p1, v6

    if-gez v9, :cond_70

    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_21

    .line 237
    .end local v8           #ret:Ljava/lang/String;
    :cond_70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p1, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_21
.end method

.method private updatePolicy()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 127
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0, v1, v4}, Landroid/net/ThrottleManager;->getCliffLevel(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThrottleValue:I

    .line 128
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0, v1, v4}, Landroid/net/ThrottleManager;->getCliffThreshold(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    .line 130
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    if-eqz v0, :cond_2c

    .line 135
    iget-wide v0, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 136
    iget-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-eqz v0, :cond_2c

    .line 137
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 147
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    .line 148
    return-void

    .line 141
    :cond_30
    iget-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-nez v0, :cond_2c

    .line 142
    iput-boolean v4, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    .line 143
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2c
.end method

.method private updateThrottleRate(I)V
    .registers 2
    .parameter "throttleRate"

    .prologue
    .line 151
    iput p1, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    .line 152
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    .line 153
    return-void
.end method

.method private updateUI()V
    .registers 16

    .prologue
    .line 164
    iget-wide v8, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 219
    :cond_8
    :goto_8
    return-void

    .line 166
    :cond_9
    iget-wide v8, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 168
    .local v6, dataUsedPercent:I
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 169
    .local v4, cycleTime:J
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v1, v8, v10

    .line 172
    .local v1, currentTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_f9

    const/4 v3, 0x0

    .line 174
    .local v3, cycleThroughPercent:I
    :goto_37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 175
    .local v0, cal:Ljava/util/Calendar;
    sub-long v8, v4, v1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 176
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 178
    .local v7, daysLeft:I
    const/16 v8, 0x16d

    if-lt v7, v8, :cond_4a

    const/4 v7, 0x0

    .line 180
    :cond_4a
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    if-eqz v8, :cond_75

    .line 182
    iget v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    if-lez v8, :cond_100

    .line 183
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00c9

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    :cond_75
    :goto_75
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    if-eqz v8, :cond_aa

    .line 194
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mTimeFramePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00ca

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :cond_aa
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    if-eqz v8, :cond_c8

    .line 199
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mThrottleRatePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00cb

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThrottleValue:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    :cond_c8
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPrefEnabled:Z

    if-eqz v8, :cond_8

    .line 205
    iget v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    if-lez v8, :cond_12c

    .line 206
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00c9

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/phone/DataUsageListener;->mCurrentThrottleRate:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 172
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v3           #cycleThroughPercent:I
    .end local v7           #daysLeft:I
    :cond_f9
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v1

    div-long/2addr v8, v4

    long-to-int v3, v8

    goto/16 :goto_37

    .line 188
    .restart local v0       #cal:Ljava/util/Calendar;
    .restart local v3       #cycleThroughPercent:I
    .restart local v7       #daysLeft:I
    :cond_100
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00c8

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_75

    .line 211
    :cond_12c
    iget-object v8, p0, Lcom/android/phone/DataUsageListener;->mSummaryPref:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    const v10, 0x7f0e00c7

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/phone/DataUsageListener;->mPolicyThreshold:J

    invoke-direct {p0, v13, v14}, Lcom/android/phone/DataUsageListener;->toReadable(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method private updateUsageStats(JJJJ)V
    .registers 11
    .parameter "readByteCount"
    .parameter "writeByteCount"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 157
    add-long v0, p1, p3

    iput-wide v0, p0, Lcom/android/phone/DataUsageListener;->mDataUsed:J

    .line 158
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mStart:Ljava/util/Calendar;

    invoke-virtual {v0, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mEnd:Ljava/util/Calendar;

    invoke-virtual {v0, p7, p8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updateUI()V

    .line 161
    return-void
.end method


# virtual methods
.method pause()V
    .registers 4

    .prologue
    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/DataUsageListener;->mIsResumed:Z

    if-eqz v1, :cond_b

    .line 118
    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/DataUsageListener;->mIsResumed:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 123
    :goto_e
    return-void

    .line 120
    :catch_f
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method resume()V
    .registers 4

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/DataUsageListener;->mIsResumed:Z

    .line 111
    iget-object v0, p0, Lcom/android/phone/DataUsageListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/DataUsageListener;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/DataUsageListener;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-direct {p0}, Lcom/android/phone/DataUsageListener;->updatePolicy()V

    .line 113
    return-void
.end method
