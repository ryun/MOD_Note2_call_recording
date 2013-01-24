.class public Lcom/android/phone/AssistedDialingList;
.super Landroid/app/Activity;
.source "AssistedDialingList.java"


# static fields
.field private static ASSISTED_DIALING_REFERENCE_COUNTRY:Ljava/lang/String;

.field private static CURRENT_COUNTRY:Ljava/lang/String;

.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field private static REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field private static REF_STRING:Ljava/lang/String;


# instance fields
.field cr:Landroid/content/ContentResolver;

.field private extra:Z

.field private issorted:Z

.field private la:Landroid/widget/SimpleCursorAdapter;

.field private list_sort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list_sort_id:[I

.field private listview:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mCountry_name:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mMCC:Ljava/lang/String;

.field private searchtext:Landroid/widget/EditText;

.field textlength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 62
    const-string v0, "refvalue"

    sput-object v0, Lcom/android/phone/AssistedDialingList;->REF_STRING:Ljava/lang/String;

    .line 63
    const-string v0, "current_country"

    sput-object v0, Lcom/android/phone/AssistedDialingList;->CURRENT_COUNTRY:Ljava/lang/String;

    .line 64
    const-string v0, "assisted_dialing_reference_country"

    sput-object v0, Lcom/android/phone/AssistedDialingList;->ASSISTED_DIALING_REFERENCE_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput v1, p0, Lcom/android/phone/AssistedDialingList;->textlength:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort:Ljava/util/ArrayList;

    .line 74
    const/16 v0, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort_id:[I

    .line 75
    iput-boolean v1, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/AssistedDialingList;->extra:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AssistedDialingList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/AssistedDialingList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/AssistedDialingList;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort_id:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/AssistedDialingList;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/AssistedDialingList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->list_sort:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/AssistedDialingList;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/AssistedDialingList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->extra:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/AssistedDialingList;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/AssistedDialingList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCountry_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/AssistedDialingList;->mCountry_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/AssistedDialingList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mMCC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/AssistedDialingList;->mMCC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/AssistedDialingList;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/AssistedDialingList;->ASSISTED_DIALING_REFERENCE_COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/AssistedDialingList;->REF_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lcom/android/phone/AssistedDialingList;->setContentView(I)V

    .line 86
    const-string v0, "AssistedDialingList"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    .line 89
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/android/phone/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    .line 90
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/android/phone/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AssistedDialingList;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 93
    const v0, 0x7f0e0688

    invoke-virtual {p0, v0}, Lcom/android/phone/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/AssistedDialingList;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    :cond_45
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AssistedDialingList;->CURRENT_COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->extra:Z

    .line 96
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    .line 97
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 98
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    .line 101
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;

    const v2, 0x7f040008

    iget-object v3, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "country"

    aput-object v5, v4, v6

    new-array v5, v9, [I

    const v8, 0x7f090013

    aput v8, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    .line 107
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/AssistedDialingList$1;

    invoke-direct {v1, p0}, Lcom/android/phone/AssistedDialingList$1;-><init>(Lcom/android/phone/AssistedDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/AssistedDialingList$2;

    invoke-direct {v1, p0}, Lcom/android/phone/AssistedDialingList$2;-><init>(Lcom/android/phone/AssistedDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 166
    .local v7, actionBar:Landroid/app/ActionBar;
    if-eqz v7, :cond_ac

    .line 167
    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 169
    :cond_ac
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    const-string v0, "AssistedDialingList"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    .line 189
    iget-object v0, p0, Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AssistedDialingList;->issorted:Z

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 197
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingList;->onBackPressed()V

    .line 198
    const/4 v0, 0x1

    goto :goto_b

    .line 195
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    const-string v0, "AssistedDialingList"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    const-string v0, "AssistedDialingList"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method
