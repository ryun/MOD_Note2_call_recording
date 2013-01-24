.class public Lcom/android/phone/EcidContact;
.super Ljava/lang/Object;
.source "EcidContact.java"


# static fields
.field static COLUMN_CITY:I

.field static COLUMN_COMPANY:I

.field static COLUMN_COUNT:I

.field static COLUMN_COUNTRY:I

.field static COLUMN_FIRST_NAME:I

.field static COLUMN_FRIENDS:I

.field static COLUMN_ID:I

.field static COLUMN_IMAGE:I

.field static COLUMN_LAST_NAME:I

.field static COLUMN_NAME:I

.field static COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

.field static COLUMN_NUMBER:I

.field static COLUMN_PREFER_CID_IMAGE:I

.field static COLUMN_SAME_NETWORK:I

.field static COLUMN_STATE:I

.field static COLUMN_STATE_ABBR:I

.field private static final CONTENT_URI:Landroid/net/Uri;

.field static m_mapEcidContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/EcidContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_bFriends:Z

.field public m_bNoOutgoingCallRestriction:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isNanp:Z

.field public m_lastName:Ljava/lang/String;

.field public m_number:Ljava/lang/String;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_urlPicture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "content://com.cequint.ecid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/android/phone/EcidContact;->m_isNanp:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/phone/EcidContact;->m_bNoOutgoingCallRestriction:Z

    return-void
.end method

.method public static clearEcidContacts()V
    .registers 2

    .prologue
    .line 97
    sget-object v1, Lcom/android/phone/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    monitor-enter v1

    .line 98
    :try_start_3
    sget-object v0, Lcom/android/phone/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    monitor-exit v1

    .line 101
    return-void

    .line 99
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/phone/EcidContact;
    .registers 7
    .parameter "ctx"
    .parameter "number"
    .parameter "numberType"

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v1, "EcidContact"

    const-string v3, "ECID AOSP VERSION: 2.3.6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p0, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 111
    invoke-static {p1}, Lcom/android/phone/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/phone/EcidContact;

    move-result-object v0

    .line 112
    .local v0, cidContact:Lcom/android/phone/EcidContact;
    if-eqz v0, :cond_17

    .line 127
    .end local v0           #cidContact:Lcom/android/phone/EcidContact;
    :goto_16
    return-object v0

    .line 116
    .restart local v0       #cidContact:Lcom/android/phone/EcidContact;
    :cond_17
    new-instance v0, Lcom/android/phone/EcidContact;

    .end local v0           #cidContact:Lcom/android/phone/EcidContact;
    invoke-direct {v0}, Lcom/android/phone/EcidContact;-><init>()V

    .line 117
    .restart local v0       #cidContact:Lcom/android/phone/EcidContact;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/EcidContact;->m_number:Ljava/lang/String;

    .line 118
    const/4 v1, 0x2

    if-eq p2, v1, :cond_31

    const/4 v1, 0x1

    :goto_26
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/phone/EcidContact;->implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    .line 119
    sget-object v1, Lcom/android/phone/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_31
    move v1, v2

    .line 118
    goto :goto_26

    .line 126
    .end local v0           #cidContact:Lcom/android/phone/EcidContact;
    :cond_33
    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getCityId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "number"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/phone/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/phone/EcidContact;

    move-result-object v0

    .line 138
    .local v0, info:Lcom/android/phone/EcidContact;
    if-nez v0, :cond_9

    .line 139
    const-string v1, ""

    .line 166
    :goto_8
    return-object v1

    .line 144
    :cond_9
    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 145
    iget-object v1, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_8

    .line 147
    :cond_14
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    .line 149
    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_stateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 151
    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_stateName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    .line 161
    :cond_2b
    :goto_2b
    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    if-nez v2, :cond_33

    .line 162
    const-string v2, ""

    iput-object v2, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    .line 166
    :cond_33
    iget-object v1, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_8

    .line 153
    :cond_36
    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/phone/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_2b

    .line 157
    :cond_64
    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_countryName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 158
    iget-object v2, v0, Lcom/android/phone/EcidContact;->m_countryName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_2b
.end method

.method public static getEcidContact(Ljava/lang/String;)Lcom/android/phone/EcidContact;
    .registers 4
    .parameter "number"

    .prologue
    .line 92
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, phoneNumber:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EcidContact;

    return-object v1
.end method

.method static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4
    .parameter "c"
    .parameter "nColumn"

    .prologue
    .line 257
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 259
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 263
    .end local v0           #str:Ljava/lang/String;
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static readColumnIds(Landroid/database/Cursor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 179
    const-string v0, "_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_ID:I

    .line 180
    const-string v0, "_COUNT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_COUNT:I

    .line 181
    const-string v0, "cid_pNumber"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_NUMBER:I

    .line 182
    const-string v0, "cid_pCityName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_CITY:I

    .line 183
    const-string v0, "cid_pStateName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_STATE:I

    .line 184
    const-string v0, "cid_pStateAbbr"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_STATE_ABBR:I

    .line 185
    const-string v0, "cid_pCountryName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_COUNTRY:I

    .line 186
    const-string v0, "cid_pCompany"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_COMPANY:I

    .line 187
    const-string v0, "cid_pName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_NAME:I

    .line 188
    const-string v0, "cid_pFirstName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_FIRST_NAME:I

    .line 189
    const-string v0, "cid_pLastName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_LAST_NAME:I

    .line 190
    const-string v0, "cid_pImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_IMAGE:I

    .line 191
    const-string v0, "cid_bSameNetwork"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_SAME_NETWORK:I

    .line 192
    const-string v0, "cid_bFriends"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_FRIENDS:I

    .line 193
    const-string v0, "cid_bPreferCidImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    .line 194
    const-string v0, "cid_bNoOutgoingCallRestriction"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    .line 196
    return-void
.end method


# virtual methods
.method public getBizName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/phone/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 372
    iget-object v0, p0, Lcom/android/phone/EcidContact;->m_bizName:Ljava/lang/String;

    .line 373
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCnapName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/phone/EcidContact;->m_cname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 378
    iget-object v0, p0, Lcom/android/phone/EcidContact;->m_cname:Ljava/lang/String;

    .line 379
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/phone/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v0, 0x1

    .line 306
    .local v0, bHasFName:Z
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2b

    .line 309
    if-eqz v0, :cond_17

    .line 310
    iget-object v2, p0, Lcom/android/phone/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_24

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    :goto_21
    return-object v2

    .line 305
    .end local v0           #bHasFName:Z
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_22
    const/4 v0, 0x0

    goto :goto_9

    .line 313
    .restart local v0       #bHasFName:Z
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_24
    const-string v2, "EcidContact"

    const-string v3, "null Contact First Name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2b
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public getLastName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/phone/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v0, 0x1

    .line 320
    .local v0, bHasLName:Z
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2b

    .line 323
    if-eqz v0, :cond_17

    .line 324
    iget-object v2, p0, Lcom/android/phone/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_24

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    :goto_21
    return-object v2

    .line 319
    .end local v0           #bHasLName:Z
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_22
    const/4 v0, 0x0

    goto :goto_9

    .line 327
    .restart local v0       #bHasLName:Z
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_24
    const-string v2, "EcidContact"

    const-string v3, "null Contact Last Name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2b
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .registers 14
    .parameter "context"
    .parameter "strNumber"
    .parameter "isSystemProvided"
    .parameter "isNotNanp"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_b9

    .line 214
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    if-eqz p3, :cond_b5

    const-string v1, "system"

    :goto_10
    aput-object v1, v4, v8

    const-string v1, "NOT-NANP"

    aput-object v1, v4, v7

    .line 218
    .local v4, flags:[Ljava/lang/String;
    :goto_16
    if-nez p4, :cond_c6

    move v1, v7

    :goto_19
    iput-boolean v1, p0, Lcom/android/phone/EcidContact;->m_isNanp:Z

    .line 220
    sget-object v1, Lcom/android/phone/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_d1

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 224
    invoke-static {v6}, Lcom/android/phone/EcidContact;->readColumnIds(Landroid/database/Cursor;)V

    .line 225
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_NUMBER:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_callerId:Ljava/lang/String;

    .line 226
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_CITY:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_cityName:Ljava/lang/String;

    .line 227
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_STATE:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_stateName:Ljava/lang/String;

    .line 228
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_STATE_ABBR:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_stateAbbr:Ljava/lang/String;

    .line 229
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_COUNTRY:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_countryName:Ljava/lang/String;

    .line 231
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_COMPANY:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_bizName:Ljava/lang/String;

    .line 232
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_cname:Ljava/lang/String;

    .line 233
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_FIRST_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_firstName:Ljava/lang/String;

    .line 234
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_LAST_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_lastName:Ljava/lang/String;

    .line 235
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_IMAGE:I

    invoke-static {v6, v1}, Lcom/android/phone/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EcidContact;->m_urlPicture:Ljava/lang/String;

    .line 236
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_SAME_NETWORK:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_c9

    move v1, v7

    :goto_8a
    iput-boolean v1, p0, Lcom/android/phone/EcidContact;->m_bSameNetwork:Z

    .line 237
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_FRIENDS:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_cb

    move v1, v7

    :goto_95
    iput-boolean v1, p0, Lcom/android/phone/EcidContact;->m_bFriends:Z

    .line 238
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_cd

    move v1, v7

    :goto_a0
    iput-boolean v1, p0, Lcom/android/phone/EcidContact;->m_bPreferCidImage:Z

    .line 239
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    if-ltz v1, :cond_b0

    .line 240
    sget v1, Lcom/android/phone/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_cf

    :goto_ae
    iput-boolean v7, p0, Lcom/android/phone/EcidContact;->m_bNoOutgoingCallRestriction:Z

    .line 244
    :cond_b0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    const/4 v6, 0x0

    .line 253
    :goto_b4
    return-void

    .line 214
    .end local v4           #flags:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_b5
    const-string v1, "user"

    goto/16 :goto_10

    .line 216
    :cond_b9
    new-array v4, v7, [Ljava/lang/String;

    if-eqz p3, :cond_c3

    const-string v1, "system"

    :goto_bf
    aput-object v1, v4, v8

    .restart local v4       #flags:[Ljava/lang/String;
    goto/16 :goto_16

    .end local v4           #flags:[Ljava/lang/String;
    :cond_c3
    const-string v1, "user"

    goto :goto_bf

    .restart local v4       #flags:[Ljava/lang/String;
    :cond_c6
    move v1, v8

    .line 218
    goto/16 :goto_19

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_c9
    move v1, v8

    .line 236
    goto :goto_8a

    :cond_cb
    move v1, v8

    .line 237
    goto :goto_95

    :cond_cd
    move v1, v8

    .line 238
    goto :goto_a0

    :cond_cf
    move v7, v8

    .line 240
    goto :goto_ae

    .line 251
    :cond_d1
    const-string v1, "EcidContact"

    const-string v2, "No CityID found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4
.end method
