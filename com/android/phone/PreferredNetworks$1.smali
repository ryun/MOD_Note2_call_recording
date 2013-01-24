.class Lcom/android/phone/PreferredNetworks$1;
.super Landroid/os/Handler;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const v8, 0x7f0e06bc

    const/4 v7, 0x0

    .line 111
    const-string v4, "PreferredNetworks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ilkwon.moon:: msg.what = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v4, "PreferredNetworks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ilkwon.moon:: msg.obj = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_da

    .line 191
    :cond_3d
    :goto_3d
    return-void

    .line 119
    :pswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 121
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a0

    .line 123
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    #getter for: Lcom/android/phone/PreferredNetworks;->isDialogShown:Z
    invoke-static {v4}, Lcom/android/phone/PreferredNetworks;->access$000(Lcom/android/phone/PreferredNetworks;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 125
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v3, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 129
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const v5, 0x7f0e06a8

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 133
    const v4, 0x7f0e002a

    new-instance v5, Lcom/android/phone/PreferredNetworks$1$1;

    invoke-direct {v5, p0}, Lcom/android/phone/PreferredNetworks$1$1;-><init>(Lcom/android/phone/PreferredNetworks$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 145
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_8e

    .line 147
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4, v8}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    :cond_8a
    :goto_8a
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3d

    .line 149
    :cond_8e
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_8a

    .line 151
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4, v8}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_8a

    .line 161
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v3           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_a0
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    #getter for: Lcom/android/phone/PreferredNetworks;->isDialogShown:Z
    invoke-static {v4}, Lcom/android/phone/PreferredNetworks;->access$000(Lcom/android/phone/PreferredNetworks;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 165
    :try_start_a8
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->dismissDialog(I)V

    .line 167
    const-string v4, "PreferredNetworks"

    const-string v5, "dismissDialog ############."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/PreferredNetworks;->removeDialog(I)V

    .line 171
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PreferredNetworks;->isDialogShown:Z
    invoke-static {v4, v5}, Lcom/android/phone/PreferredNetworks;->access$002(Lcom/android/phone/PreferredNetworks;Z)Z
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c1} :catch_cc

    .line 183
    :cond_c1
    :goto_c1
    iget-object v5, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PreferredNetworks;->displayList(Landroid/os/AsyncResult;)V
    invoke-static {v5, v4}, Lcom/android/phone/PreferredNetworks;->access$100(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V

    goto/16 :goto_3d

    .line 173
    :catch_cc
    move-exception v2

    .line 175
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PreferredNetworks"

    const-string v5, "error happen ############."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v4}, Lcom/android/phone/PreferredNetworks;->finish()V

    goto :goto_c1

    .line 115
    :pswitch_data_da
    .packed-switch 0x64
        :pswitch_3e
    .end packed-switch
.end method
