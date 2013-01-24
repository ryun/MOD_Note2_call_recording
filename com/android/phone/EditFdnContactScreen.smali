.class public Lcom/android/phone/EditFdnContactScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field private final DEFAULT_RESULT:Ljava/lang/String;

.field private final DIAL_STR_TOO_LONG:Ljava/lang/String;

.field private final ENABLE_PUK2_REQUEST:Ljava/lang/String;

.field private final INVALID_CHARACTERS_IN_DIAL_STR:Ljava/lang/String;

.field private final INVALID_CHARACTERS_IN_TEXT_STR:Ljava/lang/String;

.field private final INVALID_RESPONSE:Ljava/lang/String;

.field private final NETWORK_SERVICE_ERROR:Ljava/lang/String;

.field private final PASSWORD_INCORRECT:Ljava/lang/String;

.field private final TEXT_STR_TOO_LONG:Ljava/lang/String;

.field capaUri:Landroid/net/Uri;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAddContact:Z

.field private mCancelButton:Landroid/widget/Button;

.field private final mClicked:Landroid/view/View$OnClickListener;

.field protected mCursor:Landroid/database/Cursor;

.field private mDataBusy:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/lang/String;

.field private mIsRefreshingSIM:Z

.field private mMax_Count:I

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mName_MaxLength:I

.field private mNegPosButtonOrder:Landroid/widget/LinearLayout;

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field private mNumber_MaxLength:I

.field private final mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field private mPin2Field:Landroid/widget/EditText;

.field private mPosNegButtonOrder:Landroid/widget/LinearLayout;

.field private mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

.field private mSaveButton:Landroid/widget/Button;

.field private mUsedCount:I

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "anr_number"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "anrA_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->COLUMN_NAMES:[Ljava/lang/String;

    .line 195
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 203
    sget-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 106
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->DEFAULT_RESULT:Ljava/lang/String;

    .line 108
    const-string v0, "-1000"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->INVALID_RESPONSE:Ljava/lang/String;

    .line 110
    const-string v0, "-1001"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->NETWORK_SERVICE_ERROR:Ljava/lang/String;

    .line 112
    const-string v0, "-1003"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->PASSWORD_INCORRECT:Ljava/lang/String;

    .line 114
    const-string v0, "-1005"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->ENABLE_PUK2_REQUEST:Ljava/lang/String;

    .line 116
    const-string v0, "-1020"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->TEXT_STR_TOO_LONG:Ljava/lang/String;

    .line 118
    const-string v0, "-1021"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->DIAL_STR_TOO_LONG:Ljava/lang/String;

    .line 120
    const-string v0, "-1022"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->INVALID_CHARACTERS_IN_TEXT_STR:Ljava/lang/String;

    .line 122
    const-string v0, "-1023"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->INVALID_CHARACTERS_IN_DIAL_STR:Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCursor:Landroid/database/Cursor;

    .line 173
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "maxCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "usedCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "firstIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name_MaxLength"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number_MaxLength"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 189
    const-string v0, "content://icc/capacity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    .line 439
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$2;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    .line 727
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$9;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$9;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 788
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$10;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$10;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 799
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->validatePin2(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/EditFdnContactScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/EditFdnContactScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/EditFdnContactScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z

    return p1
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/phone/EditFdnContactScreen;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/EditFdnContactScreen;)Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/EditFdnContactScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/EditFdnContactScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/EditFdnContactScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/EditFdnContactScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/EditFdnContactScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/EditFdnContactScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/EditFdnContactScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/EditFdnContactScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/EditFdnContactScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/EditFdnContactScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->addContact()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->updateContact()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/EditFdnContactScreen;ZLjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getPin2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addContact()V
    .registers 8

    .prologue
    .line 547
    const-string v3, "addContact"

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMax_Count in addContact() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 551
    iget v3, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    if-eqz v3, :cond_42

    iget v3, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    iget v4, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    if-gt v3, v4, :cond_42

    .line 552
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e017c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/EditFdnContactScreen$4;

    invoke-direct {v4, p0}, Lcom/android/phone/EditFdnContactScreen$4;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 573
    :goto_41
    return-void

    .line 560
    :cond_42
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v2

    .line 561
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, number:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 564
    .local v0, bundle:Landroid/content/ContentValues;
    const-string v3, "tag"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v3, "number"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v3, "pin2"

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 569
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 570
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    goto :goto_41
.end method

.method private authenticatePin2()V
    .registers 2

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getPin2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 618
    return-void
.end method

.method private deleteSelected()V
    .registers 7

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_2e

    .line 604
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 605
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "number"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "adn_index"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-class v0, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x190

    const v5, 0x7f0e0152

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/EditFdnContactScreen;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 611
    :cond_2e
    return-void
.end method

.method private displayProgress(Z)V
    .registers 7
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    .line 623
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v0, :cond_44

    move v0, v1

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setHasOptionsMenu(Z)V

    .line 624
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 625
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v0, :cond_46

    const/4 v0, -0x1

    :goto_2a
    invoke-virtual {v3, v4, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 630
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v3, :cond_48

    :goto_33
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 632
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 633
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 635
    :cond_43
    return-void

    :cond_44
    move v0, v2

    .line 623
    goto :goto_9

    .line 625
    :cond_46
    const/4 v0, -0x2

    goto :goto_2a

    :cond_48
    move v1, v2

    .line 630
    goto :goto_33
.end method

.method private getContentURI()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 522
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 523
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 524
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 525
    const-string v1, "content://icc/fdn/from_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 529
    .end local v0           #phoneType:I
    :goto_21
    return-object v1

    .line 527
    .restart local v0       #phoneType:I
    :cond_22
    const-string v1, "content://icc2/fdn/from_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_21

    .line 529
    .end local v0           #phoneType:I
    :cond_29
    const-string v1, "content://icc/fdn/from_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_21
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .registers 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, returnName:Ljava/lang/String;
    return-object v0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPin2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(ZLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x7d0

    .line 651
    if-eqz p1, :cond_2a

    .line 652
    const-string v0, "handleResult: success!"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_26

    const v0, 0x7f0e014e

    :goto_14
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$5;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$5;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    :goto_25
    return-void

    .line 653
    :cond_26
    const v0, 0x7f0e0151

    goto :goto_14

    .line 662
    :cond_2a
    const-string v0, "handleResult: failed!"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deliverd error cause from RIL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 669
    const-string v0, "-1022"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "-1021"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 671
    :cond_55
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 673
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 713
    :goto_6d
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_25

    .line 674
    :cond_75
    const-string v0, "-1020"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 675
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 677
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_6d

    .line 678
    :cond_96
    const-string v0, "-1003"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 679
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 681
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_6d

    .line 682
    :cond_b7
    const-string v0, "-1005"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 683
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 685
    const v1, 0x7f0e017e

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 686
    const v1, 0x7f0e0179

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 687
    const v1, 0x7f0e002e

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$6;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$6;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 693
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 694
    new-instance v1, Lcom/android/phone/EditFdnContactScreen$7;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$7;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 700
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6d

    .line 704
    :cond_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network error service error occured!!, segment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$8;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$8;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6d
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1021
    const-string v0, "EditFdnContactScreen"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1025
    const-string v0, "EditFdnContactScreen"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1026
    return-void
.end method

.method private resolveIntent()V
    .registers 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 428
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1e

    .line 429
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    .line 430
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 431
    const-string v1, "adn_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    .line 434
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    .line 437
    :cond_29
    return-void
.end method

.method private setupView(Landroid/view/View;)V
    .registers 6
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 459
    const-string v0, "setupView()"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(0)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(1)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(2)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(3)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    .line 465
    const v0, 0x7f0900b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    .line 466
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_7a

    .line 467
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 468
    :cond_7a
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$3;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$3;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_b4

    .line 475
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 481
    :cond_b4
    const v0, 0x7f0900b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 482
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_e2

    .line 483
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    :cond_e2
    const v0, 0x7f0900b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    .line 491
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_10b

    .line 492
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 494
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    :cond_10b
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_130

    .line 498
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_125

    .line 499
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 502
    :cond_125
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_130

    .line 503
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_130
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "statusMsg"

    .prologue
    .line 642
    if-eqz p1, :cond_c

    .line 643
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 646
    :cond_c
    return-void
.end method

.method private updateContact()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 576
    const-string v0, "updateContact"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 579
    .local v7, number:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 580
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 581
    .local v4, bundle:Landroid/content/ContentValues;
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 583
    const-string v0, "tag"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "number"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_2d
    const-string v0, "adn_index"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "newTag"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "newNumber"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "pin2"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 593
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 595
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 596
    return-void
.end method

.method private validatePin2(Ljava/lang/String;)Z
    .registers 4
    .parameter "pin2"

    .prologue
    .line 719
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_13

    .line 721
    :cond_11
    const/4 v0, 0x0

    .line 723
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method


# virtual methods
.method public getByteArrayText(Ljava/lang/String;)[B
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 994
    new-array v2, v1, [B

    .line 995
    new-array v3, v1, [B

    .line 998
    const/4 v3, 0x1

    :try_start_7
    invoke-static {p1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_27

    .line 1004
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEncodable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 1005
    if-eqz v0, :cond_2a

    .line 1006
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1017
    :goto_26
    return-object v0

    .line 1000
    :catch_27
    move-exception v0

    move v0, v1

    .line 1001
    goto :goto_a

    .line 1009
    :cond_2a
    :try_start_2a
    const-string v0, "ISO-10646-UCS-2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1010
    array-length v0, v1

    new-array v0, v0, [B
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_41

    .line 1011
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_35
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_3c

    goto :goto_26

    .line 1012
    :catch_3c
    move-exception v1

    .line 1014
    :goto_3d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 1012
    :catch_41
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3d
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    .line 294
    sparse-switch p1, :sswitch_data_118

    .line 379
    :cond_24
    :goto_24
    return-void

    .line 314
    :sswitch_25
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2e

    .line 316
    const-string v0, "onActivityResult: cancelled."

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    goto :goto_24

    .line 319
    :cond_2e
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_49

    .line 322
    const-string v0, "EditFdnContactScreen"

    const-string v1, "onActivityResult: bad contact data, query return null."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 325
    :cond_49
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 326
    const-string v0, "EditFdnContactScreen"

    const-string v1, "onActivityResult: bad contact data, no results found."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 370
    :goto_57
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 329
    :cond_5b
    const-string v0, "fdn_nameinput_maxlength_limit"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 330
    const/4 v9, 0x1

    .line 331
    .local v9, isFirst:Z
    const/4 v0, 0x0

    new-array v7, v0, [B

    .line 332
    .local v7, byteArrayName:[B
    const-string v10, ""

    .line 333
    .local v10, mCurrentString:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/text/InputFilter;

    .line 335
    .local v6, NameFilterArray:[Landroid/text/InputFilter;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 337
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_ff

    .line 338
    invoke-virtual {p0, v10}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    .line 340
    :goto_7b
    array-length v0, v7

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    if-le v0, v1, :cond_ad

    .line 341
    if-eqz v9, :cond_97

    .line 342
    const/4 v9, 0x0

    .line 343
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 344
    invoke-virtual {p0, v10}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_7b

    .line 346
    :cond_97
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 347
    invoke-virtual {p0, v10}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_7b

    .line 350
    :cond_ad
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v6, v0

    .line 351
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 352
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .end local v6           #NameFilterArray:[Landroid/text/InputFilter;
    .end local v7           #byteArrayName:[B
    .end local v9           #isFirst:Z
    .end local v10           #mCurrentString:Ljava/lang/String;
    :goto_c1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 360
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 362
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 363
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 364
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$1;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_57

    .line 354
    .restart local v6       #NameFilterArray:[Landroid/text/InputFilter;
    .restart local v7       #byteArrayName:[B
    .restart local v9       #isFirst:Z
    .restart local v10       #mCurrentString:Ljava/lang/String;
    :cond_ff
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c1

    .line 357
    .end local v6           #NameFilterArray:[Landroid/text/InputFilter;
    .end local v7           #byteArrayName:[B
    .end local v9           #isFirst:Z
    .end local v10           #mCurrentString:Ljava/lang/String;
    :cond_105
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c1

    .line 374
    .end local v8           #cursor:Landroid/database/Cursor;
    :sswitch_110
    const/4 v0, -0x1

    if-ne p2, v0, :cond_24

    .line 375
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto/16 :goto_24

    .line 294
    :sswitch_data_118
    .sparse-switch
        0xc8 -> :sswitch_25
        0x190 -> :sswitch_110
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v5, 0x7f0e01d5

    const v4, 0x7f020301

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 386
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 389
    .local v0, r:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v1, :cond_31

    .line 391
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 393
    const/4 v1, 0x2

    const v2, 0x7f0e0147

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020003

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 399
    :goto_30
    return-void

    .line 396
    :cond_31
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_30
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 226
    const v0, 0x7f040029

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 227
    .local v8, v:Landroid/view/View;
    const v0, 0x7f0900b9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNegPosButtonOrder:Landroid/widget/LinearLayout;

    .line 228
    const v0, 0x7f0900bc

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPosNegButtonOrder:Landroid/widget/LinearLayout;

    .line 230
    const-string v0, "order_neg_pos_buttons"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 231
    const v0, 0x7f0900bb

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    .line 232
    const v0, 0x7f0900ba

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    .line 233
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPosNegButtonOrder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    :goto_45
    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 241
    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z

    .line 243
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 244
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const-string v5, "EF_TYPE = 28475"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v9}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 250
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->resolveIntent()V

    .line 252
    invoke-direct {p0, v8}, Lcom/android/phone/EditFdnContactScreen;->setupView(Landroid/view/View;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    .line 256
    return-object v8

    .line 235
    :cond_89
    const v0, 0x7f0900bd

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    .line 236
    const v0, 0x7f0900be

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNegPosButtonOrder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_45
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 275
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 276
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    .line 277
    const-string v0, "onDestroyView()"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 423
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 416
    :pswitch_d
    sget-object v1, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/16 v2, 0xc8

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/EditFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 420
    :pswitch_15
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->deleteSelected()V

    goto :goto_c

    .line 414
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 407
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 262
    const-string v0, "onResume "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 269
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 271
    return-void
.end method
