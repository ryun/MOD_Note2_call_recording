.class public Lcom/android/phone/callsettings/IpNumberDelete;
.super Landroid/app/ListActivity;
.source "IpNumberDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;,
        Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
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
            "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
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
    .line 74
    const-string v0, "IpNumberDelete"

    sput-object v0, Lcom/android/phone/callsettings/IpNumberDelete;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    .line 59
    iput v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mMode:I

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IpNumberDelete;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IpNumberDelete;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/IpNumberDelete;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Landroid/widget/CheckBox;

    return-object p1
.end method


# virtual methods
.method public deleteDefaultIpNumber()V
    .registers 5

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "defaultNumber"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "IP_CALL_NUMBER"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    return-void
.end method

.method public deleteIpNumber()V
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 93
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 94
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDefaultIpNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->deleteDefaultIpNumber()V

    .line 97
    :cond_29
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 92
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_38
    return-void
.end method

.method public disableDeleteButtonOrNot()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 307
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 308
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v1

    if-ne v1, v2, :cond_1e

    .line 309
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    :goto_1d
    return-void

    .line 307
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 313
    :cond_21
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d
.end method

.method public getDefaultIpNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 172
    const-string v1, "mySharedPreferences"

    iget v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mMode:I

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/IpNumberDelete;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    .line 174
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "defaultNumber"

    const-string v3, "defaultNumber"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, defauletIpNumber:Ljava/lang/String;
    return-object v0
.end method

.method public listBinding()V
    .registers 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_7

    .line 226
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->setItem()V

    .line 229
    :cond_7
    new-instance v0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;

    const v1, 0x7f04004d

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 231
    .local v0, adapter:Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDelete;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    const v1, 0x7f090171

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAll:Landroid/widget/CheckBox;

    .line 234
    const v1, 0x7f09016f

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mTableRow:Landroid/widget/TableRow;

    .line 235
    const v1, 0x7f090173

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    .line 236
    const v1, 0x7f090174

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mCancelButton:Landroid/widget/Button;

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->disableDeleteButtonOrNot()V

    .line 240
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/IpNumberDelete$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpNumberDelete$1;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/callsettings/IpNumberDelete$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpNumberDelete$2;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mTableRow:Landroid/widget/TableRow;

    invoke-virtual {v1, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, mSelectView:Landroid/view/View;
    const/4 v1, 0x0

    .line 145
    .local v1, mCheckBox:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAll:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    if-nez v3, :cond_48

    move v3, v4

    :goto_b
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    if-nez v3, :cond_4a

    move v3, v4

    :goto_13
    iput-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4c

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_38

    .line 150
    const v3, 0x7f09016d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #mCheckBox:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 152
    .restart local v1       #mCheckBox:Landroid/widget/CheckBox;
    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    :cond_38
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    iget-boolean v6, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    invoke-virtual {v3, v6}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->setChecked(Z)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .end local v0           #i:I
    :cond_48
    move v3, v5

    .line 145
    goto :goto_b

    :cond_4a
    move v3, v5

    .line 146
    goto :goto_13

    .line 157
    .restart local v0       #i:I
    :cond_4c
    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    if-ne v3, v4, :cond_5c

    .line 158
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    .line 163
    :goto_58
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->disableDeleteButtonOrNot()V

    .line 164
    return-void

    .line 160
    :cond_5c
    iput v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    goto :goto_58
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "mySharedPreferences"

    iget v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    .line 80
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDelete;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ipNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberString:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "defaultNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mDefaultIpNumber:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpNumberDelete;->readString(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->listBinding()V

    .line 86
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

    .line 202
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 204
    iput v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    .line 205
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    .line 206
    .local v1, selectItem:Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
    const v3, 0x7f09016d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 208
    .local v2, view:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v3

    if-nez v3, :cond_4c

    move v3, v4

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v3

    if-nez v3, :cond_4e

    move v3, v4

    :goto_29
    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->setChecked(Z)V

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_50

    .line 212
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 213
    iget v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    .line 211
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .end local v0           #i:I
    :cond_4c
    move v3, v5

    .line 208
    goto :goto_1f

    :cond_4e
    move v3, v5

    .line 209
    goto :goto_29

    .line 216
    .restart local v0       #i:I
    :cond_50
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAll:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mIpNumberCount:I

    if-ne v6, v7, :cond_63

    :goto_5c
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpNumberDelete;->disableDeleteButtonOrNot()V

    .line 219
    return-void

    :cond_63
    move v4, v5

    .line 216
    goto :goto_5c
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 195
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    .line 196
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    const-string v1, "SELECTAll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    .line 197
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mBundle:Landroid/os/Bundle;

    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    const-string v0, "SELECTAll"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mSelectAllCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const-string v0, "SELECT"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 187
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
    .line 267
    move-object v2, p1

    .line 268
    .local v2, numberList:Ljava/lang/String;
    const/4 v1, 0x0

    .line 271
    .local v1, mSting:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    .line 272
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "_"

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v4, token:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 275
    .local v3, stringNumber:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v3, :cond_23

    .line 276
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 277
    iget-object v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 286
    :cond_23
    iget-object v5, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

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
    .line 123
    .local p1, NumberItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v2, num:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 126
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 130
    :cond_1d
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ipNumber"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v3, "count"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setItem()V
    .registers 5

    .prologue
    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    .line 295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 296
    new-instance v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;Ljava/lang/String;Z)V

    .line 297
    .local v1, item:Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
    iget-object v2, p0, Lcom/android/phone/callsettings/IpNumberDelete;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 300
    .end local v1           #item:Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
    :cond_26
    return-void
.end method
