.class public Lcom/android/phone/CityIdInfo;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public m_hasLookupBeenPerformed:Z

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_isNanp:Z

.field public m_strCityName:Ljava/lang/String;

.field public m_strCountryName:Ljava/lang/String;

.field public m_strDisplayName:Ljava/lang/String;

.field public m_strStateAbrv:Ljava/lang/String;

.field public m_strStateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_wDisplayComputed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isNanp:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    .line 52
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/android/phone/CityIdInfo;->m_wDisplayComputed:I

    .line 59
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 61
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;
    .registers 7
    .parameter "context"
    .parameter "o"
    .parameter "isSystemProvided"

    .prologue
    .line 135
    const-string v2, "CityIdInfo"

    const-string v3, "City ID AOSP Version: 2.3.2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_1a

    .line 138
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p1
    iget-object v1, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 142
    :cond_10
    :goto_10
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_18

    if-nez p0, :cond_22

    .line 143
    :cond_18
    const/4 v0, 0x0

    .line 152
    :cond_19
    :goto_19
    return-object v0

    .line 139
    .restart local p1
    :cond_1a
    instance-of v2, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_10

    move-object v1, p1

    .line 140
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_10

    .line 145
    .end local p1
    :cond_22
    const-string v2, "com.cequint.cityidinfo"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CityIdInfo;

    .line 146
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez v0, :cond_19

    .line 148
    new-instance v0, Lcom/android/phone/CityIdInfo;

    .end local v0           #cidInfo:Lcom/android/phone/CityIdInfo;
    invoke-direct {v0}, Lcom/android/phone/CityIdInfo;-><init>()V

    .line 149
    .restart local v0       #cidInfo:Lcom/android/phone/CityIdInfo;
    const-string v2, "com.cequint.cityidinfo"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, p0, v2, p2}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_19
.end method

.method public static getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;
    .registers 3
    .parameter "info"

    .prologue
    .line 206
    if-eqz p0, :cond_f

    .line 208
    const-string v1, "com.cequint.cityidinfo"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/phone/CityIdInfo;

    if-eqz v1, :cond_f

    .line 210
    check-cast v0, Lcom/android/phone/CityIdInfo;

    .line 212
    .end local v0           #o:Ljava/lang/Object;
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static setCityIdDisplay(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 7
    .parameter "tv"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 297
    const/16 v1, 0x8

    .line 298
    .local v1, nDisplayCityId:I
    invoke-static {p1}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 299
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-eqz v0, :cond_2a

    .line 302
    iput-boolean v4, v0, Lcom/android/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 303
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 304
    iput-boolean v4, v0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 306
    iget-boolean v3, v0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v3, :cond_2a

    .line 308
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, strDisplay:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 311
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const/4 v1, 0x0

    .line 316
    .end local v2           #strDisplay:Ljava/lang/String;
    :cond_2a
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    return-void
.end method


# virtual methods
.method public computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;
    .registers 5
    .parameter "pFont"
    .parameter "wAvailable"

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-boolean v0, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v0, :cond_56

    .line 165
    iget v0, p0, Lcom/android/phone/CityIdInfo;->m_wDisplayComputed:I

    if-ne v0, p2, :cond_14

    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 166
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 196
    :goto_13
    return-object v0

    .line 168
    :cond_14
    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 169
    iput p2, p0, Lcom/android/phone/CityIdInfo;->m_wDisplayComputed:I

    .line 172
    iget-boolean v0, p0, Lcom/android/phone/CityIdInfo;->m_isNanp:Z

    if-eqz v0, :cond_51

    .line 174
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 176
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 193
    :goto_28
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    if-nez v0, :cond_30

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 196
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_13

    .line 180
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_28

    .line 185
    :cond_51
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_28

    .line 190
    :cond_56
    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_28
.end method

.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .registers 14
    .parameter "context"
    .parameter "strNumber"
    .parameter "isSystemProvided"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 255
    if-eqz p2, :cond_8

    if-nez p1, :cond_9

    .line 293
    :cond_8
    :goto_8
    return-void

    .line 262
    :cond_9
    const-string v1, "CityIdInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lookup "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 266
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v4, v9, [Ljava/lang/String;

    .line 267
    .local v4, flags:[Ljava/lang/String;
    const-string v1, "NANP"

    aput-object v1, v4, v8

    .line 268
    if-eqz p3, :cond_dc

    const-string v1, "system"

    :goto_33
    aput-object v1, v4, v7

    .line 270
    sget-object v1, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_e2

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 276
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 277
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    .line 278
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    .line 279
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    .line 280
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "City   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ST     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_e0

    move v1, v7

    :goto_d3
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isNanp:Z

    .line 286
    :cond_d5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :goto_d8
    iput-boolean v7, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    goto/16 :goto_8

    .line 268
    .end local v6           #c:Landroid/database/Cursor;
    :cond_dc
    const-string v1, "user"

    goto/16 :goto_33

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_e0
    move v1, v8

    .line 284
    goto :goto_d3

    .line 290
    :cond_e2
    const-string v1, "CityIdInfo"

    const-string v2, "No CityID found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8
.end method
