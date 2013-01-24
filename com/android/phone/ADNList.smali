.class public Lcom/android/phone/ADNList;
.super Landroid/app/ListFragment;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ADNList$QueryHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final VIEW_NAMES:[I


# instance fields
.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const-string v1, "anr_number"

    aput-object v1, v0, v3

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

    sput-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 74
    new-array v0, v3, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    return-void

    :array_36
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/ADNList;->setAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ADNList;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/ADNList;->reQuery()V

    return-void
.end method

.method private displayProgress(Z)V
    .registers 6
    .parameter "loading"

    .prologue
    const v1, 0x7f0e015c

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;Z)V

    .line 212
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 213
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    .line 215
    iget-object v2, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_57

    const v1, 0x7f0e015a

    :cond_34
    :goto_34
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    :goto_37
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 229
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    if-eqz p1, :cond_8c

    const/4 v1, -0x1

    :goto_53
    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 234
    :cond_56
    return-void

    .line 215
    :cond_57
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ADNList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_34

    const v1, 0x7f0e015b

    goto :goto_34

    .line 219
    :cond_65
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 220
    iget-object v2, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_76

    const v1, 0x7f0e0157

    :cond_72
    :goto_72
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_37

    :cond_76
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/ADNList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_72

    const v1, 0x7f0e0158

    goto :goto_72

    .line 224
    :cond_84
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 229
    :cond_8c
    const/4 v1, -0x2

    goto :goto_53
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private query()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 154
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "query: starting an async query"

    invoke-virtual {p0, v0, v8}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;Z)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v8}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 158
    return-void
.end method

.method private reQuery()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 162
    return-void
.end method

.method private setAdapter()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_32

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 192
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    :goto_f
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v0, :cond_31

    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 198
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 202
    :cond_31
    return-void

    .line 194
    :cond_32
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_f
.end method


# virtual methods
.method protected getActionBar()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 328
    const-string v0, "ADNList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method protected log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 332
    const-string v0, "ADNList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 333
    return-void
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .registers 7

    .prologue
    .line 205
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090004

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 115
    const-string v0, "onActivityCreated: "

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;Z)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->setHasOptionsMenu(Z)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 95
    const-string v0, "onCreate: "

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;Z)V

    .line 97
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const v1, 0x7f040001

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, v:Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 108
    new-instance v1, Lcom/android/phone/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/ADNList$QueryHandler;-><init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    .line 110
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 132
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->setCurrentFragment(Landroid/app/Fragment;)V

    .line 127
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 128
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 137
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 138
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 140
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 141
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_13

    .line 146
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
