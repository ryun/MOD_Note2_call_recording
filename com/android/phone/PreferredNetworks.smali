.class public Lcom/android/phone/PreferredNetworks;
.super Landroid/app/Activity;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreferredNetworks$ProgressThread;
    }
.end annotation


# instance fields
.field final app:Lcom/android/phone/PhoneApp;

.field private isDialogShown:Z

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PreferredNetworkListInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneApp;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    .line 105
    new-instance v0, Lcom/android/phone/PreferredNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$1;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    .line 289
    new-instance v0, Lcom/android/phone/PreferredNetworks$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$2;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredNetworks;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/PreferredNetworks;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/PreferredNetworks;->displayList(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PreferredNetworks;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private displayList(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "ar"

    .prologue
    .line 247
    if-nez p1, :cond_a

    .line 249
    const-string v3, "PreferredNetworks"

    const-string v4, "AsyncResult is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_9
    return-void

    .line 257
    :cond_a
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    .line 263
    const-string v3, "PreferredNetworks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4a

    .line 267
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 271
    :cond_4a
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 277
    .local v2, mAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x7f09002c

    invoke-virtual {p0, v3}, Lcom/android/phone/PreferredNetworks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 279
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->setContentView(I)V

    .line 233
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    .line 239
    iput-boolean v1, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    .line 241
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 381
    packed-switch p1, :pswitch_data_26

    .line 397
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 385
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 387
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 389
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0e06bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v2, Lcom/android/phone/PreferredNetworks$ProgressThread;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/PreferredNetworks$ProgressThread;-><init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/android/phone/PreferredNetworks$ProgressThread;->start()V

    goto :goto_7

    .line 381
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 329
    .local v0, r:Landroid/content/res/Resources;
    const/16 v1, 0xc8

    const v2, 0x7f0e06ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 333
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 431
    const-string v0, "PreferredNetworks"

    const-string v1, "onDestroy ############."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->finish()V

    .line 441
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 343
    const-string v1, "PreferredNetworks"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_14
    return v0

    .line 349
    :pswitch_15
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    const-string v2, "type_action"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string v2, "index"

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v2, "id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v2, "act_gsm"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v2, "act_gsm_compact"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v2, "act_utran"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 345
    nop

    :pswitch_data_50
    .packed-switch 0xc8
        :pswitch_15
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 423
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    .line 409
    iput-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 413
    return-void
.end method
