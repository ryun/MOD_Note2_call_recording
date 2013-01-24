.class public Lcom/android/phone/RoamingAutoDialSettings;
.super Landroid/app/ListActivity;
.source "RoamingAutoDialSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;
    }
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mListView2:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 89
    return-void
.end method

.method private getSelectedMode()I
    .registers 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_dial"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f04007e

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSettings;->setContentView(I)V

    .line 47
    const v2, 0x7f080087

    const v3, 0x109000f

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 48
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x7f080086

    const v3, 0x1090003

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 49
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x7f0901f1

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    .line 50
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    if-eqz v2, :cond_3b

    .line 51
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView2:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/RoamingAutoDialSettings$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialSettings$1;-><init>(Lcom/android/phone/RoamingAutoDialSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    :cond_3b
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    .line 60
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_54

    .line 61
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 62
    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 64
    :cond_54
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 97
    packed-switch p1, :pswitch_data_26

    .line 107
    :goto_4
    return-object v1

    .line 99
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 102
    const v2, 0x7f0e03b4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 103
    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;-><init>(Lcom/android/phone/RoamingAutoDialSettings;Lcom/android/phone/RoamingAutoDialSettings$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 97
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_dial"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 69
    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialSettings;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/phone/RoamingAutoDialSettings;->getSelectedMode()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 70
    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, current_plmn:Ljava/lang/String;
    return-void
.end method
