.class public Lcom/android/phone/RingingCallAdditionalAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "RingingCallAdditionalAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

.field private mQueryType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "RingingCallAdditionalAsyncQuery"

    sput-object v0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V
    .registers 5
    .parameter "cr"
    .parameter "queryType"
    .parameter "callerInfo"
    .parameter "listener"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 44
    iput p2, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mQueryType:I

    .line 45
    iput-object p3, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 46
    iput-object p4, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    .line 47
    return-void
.end method

.method public static startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V
    .registers 16
    .parameter "cr"
    .parameter "queryType"
    .parameter "callerinfo"
    .parameter "listener"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    new-instance v0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;-><init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 55
    .local v0, callQuery:Lcom/android/phone/RingingCallAdditionalAsyncQuery;
    const/4 v3, 0x0

    .line 56
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 57
    .local v4, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 58
    .local v5, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 59
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 61
    .local v7, orderBy:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_88

    .line 95
    :goto_f
    const/4 v2, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 63
    :sswitch_15
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #projection:[Ljava/lang/String;
    const-string v1, "group_ringtone"

    aput-object v1, v4, v10

    .line 67
    .restart local v4       #projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND group_ringtone IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    const-string v7, "data1 LIMIT 1 "

    .line 71
    goto :goto_f

    .line 74
    :sswitch_41
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 75
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #projection:[Ljava/lang/String;
    const-string v1, "group_vibration"

    aput-object v1, v4, v10

    .line 78
    .restart local v4       #projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND group_vibration IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    const-string v7, "data1 LIMIT 1 "

    .line 82
    goto :goto_f

    .line 85
    :sswitch_6d
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 87
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #projection:[Ljava/lang/String;
    const-string v1, "sec_custom_vibration"

    aput-object v1, v4, v10

    .line 90
    .restart local v4       #projection:[Ljava/lang/String;
    goto :goto_f

    .line 61
    :sswitch_data_88
    .sparse-switch
        0x2 -> :sswitch_15
        0x4 -> :sswitch_41
        0x8 -> :sswitch_6d
    .end sparse-switch
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 100
    sget-object v0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_25

    .line 103
    iget-object v0, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mQueryType:I

    iget-object v2, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, v1, v2, p3}, Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;->onRingingCallAdditionalQueryComplete(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V

    .line 106
    :cond_25
    return-void
.end method
