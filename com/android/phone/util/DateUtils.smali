.class public Lcom/android/phone/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

.field private static final FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

.field public static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static mDateFormat:[Ljava/lang/String;

.field private static mSytemDateFormat:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 37
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sput-object v4, Lcom/android/phone/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 40
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "--MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/phone/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 42
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/phone/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 44
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/phone/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 47
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "MM-dd-yyyy"

    aput-object v5, v4, v7

    const-string v5, "dd-MM-yyyy"

    aput-object v5, v4, v9

    const-string v5, "yyyy-MM-dd"

    aput-object v5, v4, v8

    sput-object v4, Lcom/android/phone/util/DateUtils;->mSytemDateFormat:[Ljava/lang/String;

    .line 48
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "MM/dd/yyyy"

    aput-object v5, v4, v7

    const-string v5, "dd/MM/yyyy"

    aput-object v5, v4, v9

    const-string v5, "yyyy/MM/dd"

    aput-object v5, v4, v8

    sput-object v4, Lcom/android/phone/util/DateUtils;->mDateFormat:[Ljava/lang/String;

    .line 52
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/phone/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/phone/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v9

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v4, v8

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v4, v10

    const/4 v5, 0x4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/phone/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 62
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM/dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/phone/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 65
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/phone/util/DateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    .line 69
    sget-object v0, Lcom/android/phone/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .local v0, arr$:[Ljava/text/SimpleDateFormat;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_aa
    if-ge v2, v3, :cond_b9

    aget-object v1, v0, v2

    .line 70
    .local v1, format:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 71
    sget-object v4, Lcom/android/phone/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 73
    .end local v1           #format:Ljava/text/SimpleDateFormat;
    :cond_b9
    sget-object v4, Lcom/android/phone/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/phone/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 74
    sget-object v4, Lcom/android/phone/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/phone/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 75
    sget-object v4, Lcom/android/phone/util/DateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/phone/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    .line 120
    if-nez p1, :cond_5

    .line 121
    const/4 v6, 0x0

    .line 172
    :goto_4
    return-object v6

    .line 124
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_11

    move-object v6, p1

    .line 126
    goto :goto_4

    .line 129
    :cond_11
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 133
    .local v5, parsePosition:Ljava/text/ParsePosition;
    sget-object v7, Lcom/android/phone/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v7

    .line 134
    :try_start_19
    sget-object v6, Lcom/android/phone/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 135
    .local v1, date:Ljava/util/Date;
    monitor-exit v7
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_42

    .line 137
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_45

    .line 138
    const-string v0, "dd/MM"

    .line 150
    .local v0, cs:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 151
    .local v4, outFormat:Ljava/text/DateFormat;
    sget-object v6, Lcom/android/phone/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 152
    monitor-enter v4

    .line 153
    :try_start_39
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v4

    goto :goto_4

    .line 154
    :catchall_3f
    move-exception v6

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_3f

    throw v6

    .line 135
    .end local v0           #cs:Ljava/lang/String;
    .end local v1           #date:Ljava/util/Date;
    .end local v4           #outFormat:Ljava/text/DateFormat;
    :catchall_42
    move-exception v6

    :try_start_43
    monitor-exit v7
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v6

    .line 157
    .restart local v1       #date:Ljava/util/Date;
    :cond_45
    const/4 v3, 0x0

    .local v3, i:I
    :goto_46
    sget-object v6, Lcom/android/phone/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v6, v6

    if-ge v3, v6, :cond_7d

    .line 158
    sget-object v6, Lcom/android/phone/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v2, v6, v3

    .line 159
    .local v2, f:Ljava/text/SimpleDateFormat;
    monitor-enter v2

    .line 160
    const/4 v6, 0x0

    :try_start_51
    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 161
    invoke-virtual {v2, p1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 162
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_79

    .line 163
    const-string v0, "dd/MM/yyyy"

    .line 166
    .restart local v0       #cs:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 167
    .restart local v4       #outFormat:Ljava/text/DateFormat;
    sget-object v6, Lcom/android/phone/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 168
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    monitor-exit v2

    goto :goto_4

    .line 170
    .end local v0           #cs:Ljava/lang/String;
    .end local v4           #outFormat:Ljava/text/DateFormat;
    :catchall_76
    move-exception v6

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_76

    throw v6

    :cond_79
    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_76

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .end local v2           #f:Ljava/text/SimpleDateFormat;
    :cond_7d
    move-object v6, p1

    .line 172
    goto :goto_4
.end method
