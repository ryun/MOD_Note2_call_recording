.class public Lcom/android/phone/callsettings/IpNumberDeleteCdma;
.super Landroid/app/ListActivity;
.source "IpNumberDeleteCdma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;,
        Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCancelButton:Landroid/widget/Button;

.field private mDefaultIpNumber:Ljava/lang/String;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteStatus:Landroid/widget/CheckBox;

.field private mIpNumberCount:I

.field private mIpNumberString:Ljava/lang/String;

.field private mItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mNumberItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAll:Landroid/widget/CheckBox;

.field private mSelectAllCheck:Z

.field private mTableRow:Landroid/widget/TableRow;

.field private mySharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const-string v0, "IpNumberDeleteCdma"

    sput-object v0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    .line 58
    iput v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mMode:I

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteStatus:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/IpNumberDeleteCdma;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteStatus:Landroid/widget/CheckBox;

    return-object p1
.end method


# virtual methods
.method public deleteDefaultIpNumber()V
    .registers 5

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "defaultNumberCdma"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "IP_CALL_NUMBER_CDMA"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    return-void
.end method

.method public deleteIpNumber()V
    .registers 4

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 92
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->getChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 93
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDefaultIpNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->deleteDefaultIpNumber()V

    .line 96
    :cond_29
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    add-int/lit8 v0, v0, -0x1

    .line 91
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_38
    return-void
.end method

.method public disableDeleteButtonOrNot()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 299
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 300
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->getChecked()Z

    move-result v1

    if-ne v1, v2, :cond_1e

    .line 301
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    :goto_1d
    return-void

    .line 299
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :cond_21
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d
.end method

.method public getDefaultIpNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 171
    const-string v1, "mySharedPreferences"

    iget v2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mMode:I

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mySharedPreferences:Landroid/content/SharedPreferences;

    .line 173
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "defaultNumberCdma"

    const-string v3, "defaultNumberCdma"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, defauletIpNumber:Ljava/lang/String;
    return-object v0
.end method

.method public listBinding()V
    .registers 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_7

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->setItem()V

    .line 228
    :cond_7
    new-instance v0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;

    const v1, 0x7f04004d

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 230
    .local v0, adapter:Lcom/android/phone/callsettings/IpNumberDeleteCdma$IPCallAdapter;
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    const v1, 0x7f090171

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAll:Landroid/widget/CheckBox;

    .line 233
    const v1, 0x7f09016f

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mTableRow:Landroid/widget/TableRow;

    .line 234
    const v1, 0x7f090173

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteButton:Landroid/widget/Button;

    .line 235
    const v1, 0x7f090174

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mCancelButton:Landroid/widget/Button;

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->disableDeleteButtonOrNot()V

    .line 239
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDeleteButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;-><init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/IpNumberDeleteCdma$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$2;-><init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mTableRow:Landroid/widget/TableRow;

    invoke-virtual {v1, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, mSelectView:Landroid/view/View;
    const/4 v1, 0x0

    .line 144
    .local v1, mCheckBox:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAll:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    if-nez v3, :cond_48

    move v3, v4

    :goto_b
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    if-nez v3, :cond_4a

    move v3, v4

    :goto_13
    iput-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4c

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_38

    .line 149
    const v3, 0x7f09016d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #mCheckBox:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 151
    .restart local v1       #mCheckBox:Landroid/widget/CheckBox;
    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    :cond_38
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;

    iget-boolean v6, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    invoke-virtual {v3, v6}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->setChecked(Z)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .end local v0           #i:I
    :cond_48
    move v3, v5

    .line 144
    goto :goto_b

    :cond_4a
    move v3, v5

    .line 145
    goto :goto_13

    .line 156
    .restart local v0       #i:I
    :cond_4c
    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    if-ne v3, v4, :cond_5c

    .line 157
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberCount:I

    .line 162
    :goto_58
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->disableDeleteButtonOrNot()V

    .line 163
    return-void

    .line 159
    :cond_5c
    iput v5, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberCount:I

    goto :goto_58
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "mySharedPreferences"

    iget v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mySharedPreferences:Landroid/content/SharedPreferences;

    .line 79
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ipNumberCdma"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberString:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberCount:I

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "defaultNumberCdma"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mDefaultIpNumber:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->readString(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->listBinding()V

    .line 85
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 201
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 203
    iput v5, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberCount:I

    .line 204
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;

    .line 205
    .local v1, selectItem:Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;
    const v3, 0x7f09016d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 207
    .local v2, view:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->getChecked()Z

    move-result v3

    if-nez v3, :cond_4c

    move v3, v4

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->getChecked()Z

    move-result v3

    if-nez v3, :cond_4e

    move v3, v4

    :goto_29
    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->setChecked(Z)V

    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_50

    .line 211
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 212
    iget v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberCount:I

    .line 210
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .end local v0           #i:I
    :cond_4c
    move v3, v5

    .line 207
    goto :goto_1f

    :cond_4e
    move v3, v5

    .line 208
    goto :goto_29

    .line 215
    .restart local v0       #i:I
    :cond_50
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAll:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mIpNumberCount:I

    if-ne v6, v7, :cond_63

    :goto_5c
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->disableDeleteButtonOrNot()V

    .line 218
    return-void

    :cond_63
    move v4, v5

    .line 215
    goto :goto_5c
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mBundle:Landroid/os/Bundle;

    .line 195
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mBundle:Landroid/os/Bundle;

    const-string v1, "SELECTAll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    .line 196
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mBundle:Landroid/os/Bundle;

    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    .line 197
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string v0, "SELECTAll"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mSelectAllCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    const-string v0, "SELECT"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 186
    return-void
.end method

.method public readString(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .parameter "ipnumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    move-object v2, p1

    .line 267
    .local v2, numberList:Ljava/lang/String;
    const/4 v1, 0x0

    .line 270
    .local v1, mSting:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    .line 271
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "_"

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .local v4, token:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 274
    .local v3, stringNumber:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v3, :cond_23

    .line 275
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v5, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 278
    :cond_23
    iget-object v5, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    return-object v5
.end method

.method public saveIpNumber(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, NumberItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v2, num:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 125
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 129
    :cond_1d
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ipNumberCdma"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v3, "count"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setItem()V
    .registers 5

    .prologue
    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 288
    new-instance v1, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;-><init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;Ljava/lang/String;Z)V

    .line 289
    .local v1, item:Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;
    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 292
    .end local v1           #item:Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;
    :cond_26
    return-void
.end method
