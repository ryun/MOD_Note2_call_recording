.class public Lcom/android/phone/RoamingAutoDialMainActivity;
.super Landroid/app/ListActivity;
.source "RoamingAutoDialMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingAutoDialMainActivity$1;,
        Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 44
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    const v1, 0x7f04007d

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAutoDialMainActivity;->setContentView(I)V

    .line 53
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAutoDialMainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 109
    packed-switch p1, :pswitch_data_2e

    .line 120
    const-string v2, "RoamingAutoDialMainActivity"

    const-string v3, "onCreateDialog id ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_b
    return-object v1

    .line 111
    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 115
    const v2, 0x7f0e03b5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 116
    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/RoamingAutoDialMainActivity$OkClickListener;-><init>(Lcom/android/phone/RoamingAutoDialMainActivity;Lcom/android/phone/RoamingAutoDialMainActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_b

    .line 109
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/RoamingAutoDialSubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    packed-switch p3, :pswitch_data_60

    .line 97
    const-string v0, "RoamingAutoDialMainActivity"

    const-string v1, "ListItemClick position ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_11
    return-void

    .line 69
    :pswitch_12
    const-string v1, "RAD_SUB_NAME"

    const-string v2, "SKTRADAboutRADActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 73
    :pswitch_1d
    const-string v1, "RAD_SUB_NAME"

    const-string v2, "SKTRADDialToKoreaActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 77
    :pswitch_28
    const-string v1, "RAD_SUB_NAME"

    const-string v2, "SKTRADDialToAbroadActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 81
    :pswitch_33
    const-string v1, "RAD_SUB_NAME"

    const-string v2, "SKTRADTRoamingCenterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 85
    :pswitch_3e
    const-string v1, "RAD_SUB_NAME"

    const-string v2, "SKTRADMOFATInfoActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 89
    :pswitch_49
    const-string v1, "RAD_SUB_NAME"

    const-string v2, "SKTRADOnOffActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 93
    :pswitch_54
    const-string v1, "RAD_SUB_NAME"

    const-string v2, "SKTRADLocalTimeInfoActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 67
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1d
        :pswitch_28
        :pswitch_33
        :pswitch_3e
        :pswitch_49
        :pswitch_54
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 63
    return-void
.end method
