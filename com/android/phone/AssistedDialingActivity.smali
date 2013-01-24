.class public Lcom/android/phone/AssistedDialingActivity;
.super Landroid/preference/PreferenceActivity;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field private static final RESET_COUNTRY_DETAILS:Landroid/net/Uri;

.field private static final UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

.field public static area:Ljava/lang/String;

.field public static nationalnumberlength:Ljava/lang/String;


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field cr:Landroid/content/ContentResolver;

.field private la:Landroid/widget/SimpleCursorAdapter;

.field private mAreaCode:Landroid/preference/EditTextPreference;

.field private mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Landroid/preference/EditTextPreference;

.field private mIDD:Landroid/preference/EditTextPreference;

.field private mNDD:Landroid/preference/EditTextPreference;

.field private mNationalNumberLength:Landroid/preference/EditTextPreference;

.field private mReferenceText:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 63
    const-string v0, "content://assisteddialing/mcc_otalookup/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    .line 64
    const-string v0, "content://assisteddialing/mcc_otalookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    .line 85
    sput-object v1, Lcom/android/phone/AssistedDialingActivity;->area:Ljava/lang/String;

    .line 86
    sput-object v1, Lcom/android/phone/AssistedDialingActivity;->nationalnumberlength:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private displayHelp()V
    .registers 5

    .prologue
    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, aDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0683

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 292
    const v2, 0x7f0e0693

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 293
    const v2, 0x7f0e0691

    new-instance v3, Lcom/android/phone/AssistedDialingActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/AssistedDialingActivity$1;-><init>(Lcom/android/phone/AssistedDialingActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 297
    .local v1, ad:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 298
    return-void
.end method

.method private getReferenceCountryAndSet()V
    .registers 15

    .prologue
    .line 165
    const-string v0, "AssistedDialing"

    const-string v1, "getReferenceCountry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    .line 167
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 168
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 169
    .local v3, mCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040005

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "country"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mcc"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "idd"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ndd"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "nanp"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "nbpcd"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "countrycode"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_162

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->la:Landroid/widget/SimpleCursorAdapter;

    .line 175
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, mdn:Ljava/lang/String;
    if-eqz v3, :cond_122

    .line 178
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, country:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, idd:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, ndd:Ljava/lang/String;
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, countrycode:Ljava/lang/String;
    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, areaCityCode:Ljava/lang/String;
    const/16 v0, 0x9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, nationalNumLen:Ljava/lang/String;
    if-nez v7, :cond_9f

    .line 187
    if-eqz v11, :cond_123

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_123

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 194
    :cond_9f
    :goto_9f
    if-nez v12, :cond_b2

    .line 195
    if-eqz v11, :cond_12c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_12c

    .line 196
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 202
    :cond_b2
    :goto_b2
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_bb

    .line 203
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    :cond_bb
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_cf

    .line 206
    if-eqz v7, :cond_135

    .line 207
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_area_code"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    :cond_cf
    :goto_cf
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_e3

    .line 214
    if-eqz v10, :cond_13e

    .line 215
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_idd"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    :cond_e3
    :goto_e3
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_f7

    .line 222
    if-eqz v13, :cond_147

    .line 223
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_ndd"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    :cond_f7
    :goto_f7
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_10b

    .line 230
    if-eqz v9, :cond_150

    .line 231
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_country_code"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    :cond_10b
    :goto_10b
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_11f

    .line 238
    if-eqz v12, :cond_159

    .line 239
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_nnl"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    :cond_11f
    :goto_11f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 247
    .end local v7           #areaCityCode:Ljava/lang/String;
    .end local v8           #country:Ljava/lang/String;
    .end local v9           #countrycode:Ljava/lang/String;
    .end local v10           #idd:Ljava/lang/String;
    .end local v12           #nationalNumLen:Ljava/lang/String;
    .end local v13           #ndd:Ljava/lang/String;
    :cond_122
    return-void

    .line 190
    .restart local v7       #areaCityCode:Ljava/lang/String;
    .restart local v8       #country:Ljava/lang/String;
    .restart local v9       #countrycode:Ljava/lang/String;
    .restart local v10       #idd:Ljava/lang/String;
    .restart local v12       #nationalNumLen:Ljava/lang/String;
    .restart local v13       #ndd:Ljava/lang/String;
    :cond_123
    const-string v0, "AssistedDialing"

    const-string v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 198
    :cond_12c
    const-string v0, "AssistedDialing"

    const-string v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 210
    :cond_135
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0e0697

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_cf

    .line 218
    :cond_13e
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f0e0695

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_e3

    .line 226
    :cond_147
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f0e0696

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_f7

    .line 234
    :cond_150
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0e0694

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_10b

    .line 242
    :cond_159
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    const v1, 0x7f0e0698

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_11f

    .line 169
    :array_162
    .array-data 0x4
        0x13t 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
        0x15t 0x0t 0x9t 0x7ft
        0x16t 0x0t 0x9t 0x7ft
        0x17t 0x0t 0x9t 0x7ft
        0x18t 0x0t 0x9t 0x7ft
        0x19t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private resetDetails()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 282
    const-string v0, "AssistedDialing"

    const-string v1, "resetDetails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 284
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->getReferenceCountryAndSet()V

    .line 287
    return-void
.end method

.method private updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "where"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 377
    const-string v1, "AssistedDialing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDetails uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .local v0, updatevalue:Landroid/content/ContentValues;
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 381
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v4, 0x7f040006

    invoke-virtual {p0, v4}, Lcom/android/phone/AssistedDialingActivity;->addPreferencesFromResource(I)V

    .line 100
    const-string v4, "AssistedDialing"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 104
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    move-object v1, p0

    .line 105
    .local v1, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    .line 107
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 109
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 110
    invoke-virtual {v1}, Lcom/android/phone/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 112
    invoke-virtual {v1}, Lcom/android/phone/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 117
    new-instance v4, Lcom/android/phone/AssistedDialingEnabler;

    iget-object v5, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v5, v6}, Lcom/android/phone/AssistedDialingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    .line 119
    const-string v4, "button_current_country_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    .line 120
    const-string v4, "Area_city_code"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    .line 121
    const-string v4, "IDD_prefix"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    .line 122
    const-string v4, "NDD_prefix"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    .line 123
    const-string v4, "country_code"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    .line 124
    const-string v4, "National_number_length"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    .line 126
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_b7

    .line 134
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 136
    :cond_b7
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f11

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 161
    const-string v0, "AssistedDialing"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 278
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 269
    :sswitch_d
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->resetDetails()V

    goto :goto_c

    .line 272
    :sswitch_11
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->displayHelp()V

    goto :goto_c

    .line 275
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->onBackPressed()V

    goto :goto_c

    .line 267
    nop

    :sswitch_data_1a
    .sparse-switch
        0x102002c -> :sswitch_15
        0x7f090276 -> :sswitch_d
        0x7f090277 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 152
    const-string v0, "AssistedDialing"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    if-eqz v0, :cond_13

    .line 154
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/AssistedDialingEnabler;->pause()V

    .line 156
    :cond_13
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 309
    const-string v3, "AssistedDialing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange preference : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_reference_country"

    const/16 v5, 0xd4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_63

    .line 314
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_area_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 318
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "area_city_code"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v3, "AssistedDialing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_61
    :goto_61
    const/4 v3, 0x1

    return v3

    .line 320
    :cond_63
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_9d

    .line 321
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_idd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 325
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "idd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "AssistedDialing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 327
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_9d
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_d7

    .line 328
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_ndd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 332
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "ndd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v3, "AssistedDialing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 334
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_d7
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_112

    .line 335
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_country_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "countrycode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v3, "AssistedDialing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 341
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_112
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_61

    .line 342
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_nnl"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 345
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 346
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "national_num_len"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v3, "AssistedDialing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 354
    const-string v1, "AssistedDialing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick preference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_32

    .line 358
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_area_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_30
    :goto_30
    const/4 v1, 0x0

    return v1

    .line 360
    :cond_32
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_4a

    .line 361
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_idd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 363
    :cond_4a
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_62

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_ndd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 366
    :cond_62
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_7a

    .line 367
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 369
    :cond_7a
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_30

    .line 370
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_nnl"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 258
    const v2, 0x7f090276

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    .line 259
    .local v1, reset:Landroid/view/MenuItem;
    const v2, 0x7f020436

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 260
    const v2, 0x7f090277

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 261
    .local v0, help:Landroid/view/MenuItem;
    const v2, 0x7f020430

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 141
    const-string v0, "AssistedDialing"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->getReferenceCountryAndSet()V

    .line 144
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    if-eqz v0, :cond_16

    .line 145
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/AssistedDialingEnabler;->resume()V

    .line 147
    :cond_16
    return-void
.end method
