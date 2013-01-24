.class public Lcom/android/phone/callsettings/EditAutoRejectScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditAutoRejectScreen.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field final MATCH_ENDS_WITH:I

.field final MATCH_EQUAL:I

.field final MATCH_INCLUDE:I

.field final MATCH_STARTS_WITH:I

.field final defaultIndex:I

.field editBox:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mContentURI:Landroid/net/Uri;

.field private mMatchCriteria:I

.field private mMatchCriteriaType:Landroid/preference/ListPreference;

.field mToast:Landroid/widget/Toast;

.field private match_MODE:I

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field searchButton:Landroid/widget/Button;

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "reject_number"

    aput-object v1, v0, v4

    const-string v1, "reject_checked"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->FROM:[Ljava/lang/String;

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->NUM_PROJECTION:[Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 119
    sget-object v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 100
    iput v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->MATCH_EQUAL:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->MATCH_STARTS_WITH:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->MATCH_ENDS_WITH:I

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->MATCH_INCLUDE:I

    .line 104
    iput v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->defaultIndex:I

    .line 133
    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mContentURI:Landroid/net/Uri;

    .line 397
    new-instance v0, Lcom/android/phone/callsettings/EditAutoRejectScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen$4;-><init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/EditAutoRejectScreen;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method private addAutoRejectNumber(Ljava/lang/String;I)J
    .registers 10
    .parameter "string"
    .parameter "matched"

    .prologue
    const/4 v6, 0x1

    .line 610
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 611
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v4, "reject_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v4, "reject_match"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 616
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 617
    .local v0, id:J
    return-wide v0
.end method

.method private alertdialogSearch()V
    .registers 4

    .prologue
    .line 414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, SearchListDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e02ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 416
    const v1, 0x7f08000b

    new-instance v2, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;-><init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 443
    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .registers 11
    .parameter "string"

    .prologue
    const/4 v8, 0x1

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, inUse:Z
    const/4 v0, 0x0

    .line 450
    .local v0, cur:Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    .line 452
    if-nez v0, :cond_12

    .line 453
    const-string v5, "EditAutoRejectScreen"

    const-string v6, "checkAlreadyInUse : cursor is null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v5, 0x0

    .line 513
    :goto_11
    return v5

    .line 457
    :cond_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 459
    :cond_18
    move-object v3, p1

    .line 460
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, rejectNumber:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 462
    .local v2, matchCriteria:I
    iget-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->previous_NUM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget v5, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->previous_match_MODE:I

    if-ne v5, v2, :cond_3c

    .line 508
    :cond_2e
    :goto_2e
    if-eq v1, v8, :cond_36

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_18

    .line 510
    .end local v2           #matchCriteria:I
    .end local v3           #phoneNumber:Ljava/lang/String;
    .end local v4           #rejectNumber:Ljava/lang/String;
    :cond_36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 511
    const/4 v0, 0x0

    move v5, v1

    .line 513
    goto :goto_11

    .line 467
    .restart local v2       #matchCriteria:I
    .restart local v3       #phoneNumber:Ljava/lang/String;
    .restart local v4       #rejectNumber:Ljava/lang/String;
    :cond_3c
    iget-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_2e

    .line 468
    packed-switch v2, :pswitch_data_ce

    goto :goto_2e

    .line 475
    :pswitch_4c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 476
    const-string v5, "EditAutoRejectScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAlreadyInUse : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v1, 0x1

    goto :goto_2e

    .line 483
    :pswitch_6c
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 484
    const-string v5, "EditAutoRejectScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAlreadyInUse : MATCH_STARTS_WITH, rejectNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v1, 0x1

    goto :goto_2e

    .line 491
    :pswitch_8c
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 492
    const-string v5, "EditAutoRejectScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAlreadyInUse : MATCH_ENDS_WITH, rejectNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x1

    goto :goto_2e

    .line 499
    :pswitch_ac
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 500
    const-string v5, "EditAutoRejectScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAlreadyInUse : MATCH_INCLUDE, rejectNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v1, 0x1

    goto/16 :goto_2e

    .line 468
    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_6c
        :pswitch_8c
        :pswitch_ac
    .end packed-switch
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_e

    .line 646
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 649
    :cond_e
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/EditAutoRejectScreen;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .registers 6
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 519
    if-nez p1, :cond_4

    .line 529
    :cond_3
    :goto_3
    return v2

    .line 523
    :cond_4
    const/4 v1, 0x0

    .local v1, index:I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_18

    .line 524
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 525
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 529
    .end local v0           #c:C
    :cond_18
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .registers 11
    .parameter "string"
    .parameter "checked"
    .parameter "matched"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 621
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 622
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const-string v2, "reject_match"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mContentURI:Landroid/net/Uri;

    int-to-long v3, p4

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 626
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method private updateMatchCriteria(I)V
    .registers 5
    .parameter "currentMatch"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    const-string v0, "EditAutoRejectScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentMatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, "EditAutoRejectScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMatchCriteriaType.getEntry() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method


# virtual methods
.method public clickCancelBtn(Landroid/view/View;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 394
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 395
    return-void
.end method

.method public clickSaveBtn(Landroid/view/View;)V
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 359
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    .local v0, currentMatchType:Ljava/lang/String;
    const-string v3, "EditAutoRejectScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentMatchType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0e034b

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->displayToast(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 390
    :goto_72
    return-void

    .line 368
    :cond_73
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_95

    .line 369
    const v3, 0x7f0e034c

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->displayToast(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_72

    .line 374
    :cond_95
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bb

    .line 375
    const v3, 0x7f0e034d

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->displayToast(Ljava/lang/String;)V

    .line 376
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_72

    .line 380
    :cond_bb
    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->update_MODE:Z

    if-ne v3, v7, :cond_ef

    .line 381
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->update_ID:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 387
    :goto_e0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 388
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 389
    .local v2, pa:Landroid/preference/PreferenceActivity;
    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_72

    .line 384
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pa:Landroid/preference/PreferenceActivity;
    :cond_ef
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->addAutoRejectNumber(Ljava/lang/String;I)J

    goto :goto_e0
.end method

.method isUnknownNumber(Ljava/lang/String;)Z
    .registers 4
    .parameter "num"

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, result:Z
    const-string v1, "-2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "-3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 537
    :cond_19
    const/4 v0, 0x1

    .line 539
    :cond_1a
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/16 v8, 0x64

    .line 543
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 545
    const-string v7, ""

    .line 546
    .local v7, output:Ljava/lang/String;
    packed-switch p1, :pswitch_data_be

    .line 595
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/EditAutoRejectScreen$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen$6;-><init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 601
    if-eqz v7, :cond_2a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 602
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 604
    :cond_2a
    :goto_2a
    return-void

    .line 548
    :pswitch_2b
    if-ne p2, v0, :cond_d

    .line 549
    const-string v0, "EditAutoRejectScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 553
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 554
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "unknwon number from log"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 558
    :cond_5d
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 560
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_6b

    .line 561
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 563
    :cond_6b
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 568
    :pswitch_71
    if-ne p2, v0, :cond_b4

    .line 569
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/EditAutoRejectScreen;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 571
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_99

    .line 572
    :cond_8b
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_92
    :goto_92
    if-eqz v6, :cond_d

    .line 584
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 574
    :cond_99
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 576
    if-eqz v7, :cond_92

    .line 577
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_ae

    .line 578
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 580
    :cond_ae
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92

    .line 587
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_b4
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 546
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_71
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 408
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 410
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 411
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 142
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 143
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_17

    .line 144
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 147
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mToast:Landroid/widget/Toast;

    .line 149
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->setHasOptionsMenu(Z)V

    .line 150
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 13
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v9, 0x7f0e02d1

    const v8, 0x7f0e02cd

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 296
    .local v1, isTablet:Z
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    move v0, v3

    .line 297
    .local v0, cancelOrder:I
    :goto_18
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    move v2, v4

    .line 299
    .local v2, saveOrder:I
    :goto_21
    const/4 v5, 0x4

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_74

    move v5, v4

    :goto_31
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    const/4 v5, 0x3

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0202c3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    const/4 v5, 0x2

    invoke-interface {p1, v3, v5, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_76

    move v5, v4

    :goto_57
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    invoke-interface {p1, v3, v4, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0202c7

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 311
    return-void

    .end local v0           #cancelOrder:I
    .end local v2           #saveOrder:I
    :cond_70
    move v0, v4

    .line 296
    goto :goto_18

    .restart local v0       #cancelOrder:I
    :cond_72
    move v2, v3

    .line 297
    goto :goto_21

    .restart local v2       #saveOrder:I
    :cond_74
    move v5, v3

    .line 299
    goto :goto_31

    :cond_76
    move v5, v3

    .line 304
    goto :goto_57
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 156
    const v4, 0x7f040011

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, v:Landroid/view/View;
    const-string v4, "match_criteria_mode"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    .line 159
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActivity()Landroid/app/Activity;

    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 163
    const v4, 0x7f090030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    .line 165
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    if-nez v4, :cond_3b

    .line 166
    const-string v4, "EditAutoRejectScreen"

    const-string v5, "onCreateView() - editBox is null !!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_3a
    :goto_3a
    return-object v3

    .line 170
    :cond_3b
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectScreen$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen$1;-><init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    const-string v4, "mics_kor_common"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 188
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 191
    :cond_58
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectScreen$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen$2;-><init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->searchButton:Landroid/widget/Button;

    .line 198
    const-string v4, "rearrange_search_contact_image"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 199
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->searchButton:Landroid/widget/Button;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 201
    :cond_7e
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->searchButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectScreen$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen$3;-><init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, isOutgoing:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_f8

    .line 211
    const-string v4, "UPDATE_MODE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->update_MODE:Z

    .line 212
    iget-boolean v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->update_MODE:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d4

    .line 213
    const-string v4, "UPDATE_ID"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->update_ID:I

    .line 214
    const-string v4, "MATCH_MODE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->match_MODE:I

    .line 215
    const-string v4, "SELECT_NUMBER"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->select_NUM:Ljava/lang/String;

    .line 216
    iget v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->match_MODE:I

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteria:I

    .line 217
    iget v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->match_MODE:I

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->previous_match_MODE:I

    .line 218
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->select_NUM:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->previous_NUM:Ljava/lang/String;

    .line 219
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->select_NUM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 221
    .local v2, len:I
    if-lez v2, :cond_d4

    .line 222
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 225
    .end local v2           #len:I
    :cond_d4
    const-string v4, "isOutgoing"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 230
    :goto_da
    if-eqz v1, :cond_fb

    .line 231
    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mContentURI:Landroid/net/Uri;

    .line 236
    :goto_e0
    const-string v4, "call_block_ui"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0505

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 227
    :cond_f8
    iput v8, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteria:I

    goto :goto_da

    .line 233
    :cond_fb
    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mContentURI:Landroid/net/Uri;

    goto :goto_e0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 264
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 258
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    .line 259
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 354
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 346
    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->clickSaveBtn(Landroid/view/View;)V

    goto :goto_d

    .line 351
    :pswitch_12
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->clickCancelBtn(Landroid/view/View;)V

    goto :goto_d

    .line 335
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 270
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_31

    .line 653
    const-string v0, "EditAutoRejectScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteria:I

    .line 655
    iget v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteria:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->updateMatchCriteria(I)V

    .line 656
    const/4 v0, 0x1

    .line 658
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 315
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 316
    .local v1, isTablet:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_3e

    move v0, v3

    .line 319
    .local v0, isLand:Z
    :goto_1c
    if-eqz v1, :cond_40

    .line 320
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    :goto_3a
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 332
    return-void

    .end local v0           #isLand:Z
    :cond_3e
    move v0, v4

    .line 316
    goto :goto_1c

    .line 325
    .restart local v0       #isLand:Z
    :cond_40
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_63

    move v2, v3

    :goto_47
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 326
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 327
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_58

    move v4, v3

    :cond_58
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 328
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3a

    :cond_63
    move v2, v4

    .line 325
    goto :goto_47
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 247
    iget v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->mMatchCriteria:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->updateMatchCriteria(I)V

    .line 249
    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 251
    const v1, 0x7f0e0720

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, titleString:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    .end local v0           #titleString:Ljava/lang/CharSequence;
    :cond_25
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 276
    return-void
.end method
