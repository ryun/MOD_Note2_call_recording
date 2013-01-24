.class public Lcom/android/phone/FdnList;
.super Lcom/android/phone/ADNList;
.source "FdnList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FdnList$FDNAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final VIEW_NAMES:[I


# instance fields
.field private fdnNumber:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 50
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

    sput-object v0, Lcom/android/phone/FdnList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/phone/FdnList;->VIEW_NAMES:[I

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
    .line 47
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FdnList;->fdnNumber:Ljava/util/HashMap;

    .line 238
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/phone/FdnList;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/phone/FdnList;->VIEW_NAMES:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FdnList;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/FdnList;->fdnNumber:Ljava/util/HashMap;

    return-object v0
.end method

.method private addContact()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1e

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 177
    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e014c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 180
    :cond_1e
    return-void
.end method

.method private deleteSelected()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 217
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string v5, "name"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "adn_index"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_51

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 228
    const-class v1, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0152

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 232
    :cond_51
    return-void
.end method

.method private editSelected()V
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 190
    return-void
.end method

.method private editSelected(I)V
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 197
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    const-string v2, "FdnList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adn_index: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 202
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 203
    const-string v5, "name"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "adn_index"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_65

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 209
    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e014f

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 213
    :cond_65
    return-void
.end method


# virtual methods
.method public fdnCall(I)V
    .registers 7
    .parameter "pos"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/phone/FdnList;->fdnNumber:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, number:Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 111
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1f
    return-void
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .registers 5

    .prologue
    .line 235
    new-instance v0, Lcom/android/phone/FdnList$FDNAdapter;

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04003a

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/FdnList$FDNAdapter;-><init>(Lcom/android/phone/FdnList;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    :cond_d
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    const v2, 0x7f0e0145

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020002

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 122
    const/4 v1, 0x2

    const v2, 0x7f0e0146

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 124
    const/4 v1, 0x3

    const v2, 0x7f0e0147

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020003

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 169
    invoke-direct {p0, p3}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 170
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    .line 163
    :cond_8
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 142
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-gtz v1, :cond_8

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/FdnSetting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_c

    .line 151
    :sswitch_37
    invoke-direct {p0}, Lcom/android/phone/FdnList;->addContact()V

    goto :goto_c

    .line 155
    :sswitch_3b
    invoke-direct {p0}, Lcom/android/phone/FdnList;->editSelected()V

    goto :goto_c

    .line 159
    :sswitch_3f
    invoke-direct {p0}, Lcom/android/phone/FdnList;->deleteSelected()V

    goto :goto_c

    .line 140
    nop

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_3f
        0x102002c -> :sswitch_d
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_23

    move v0, v1

    .line 133
    .local v0, hasSelection:Z
    :goto_b
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    return-void

    .line 131
    .end local v0           #hasSelection:Z
    :cond_23
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 92
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 93
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 94
    const-string v2, "content://icc/fdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    .end local v1           #phoneType:I
    :goto_28
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 96
    .restart local v1       #phoneType:I
    :cond_2d
    const-string v2, "content://icc2/fdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_28

    .line 99
    .end local v1           #phoneType:I
    :cond_37
    const-string v2, "content://icc/fdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_28
.end method
