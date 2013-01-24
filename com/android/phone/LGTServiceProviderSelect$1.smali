.class Lcom/android/phone/LGTServiceProviderSelect$1;
.super Landroid/os/Handler;
.source "LGTServiceProviderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTServiceProviderSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTServiceProviderSelect;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTServiceProviderSelect;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 300
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_86

    .line 330
    :goto_6
    return-void

    .line 302
    :sswitch_7
    const-string v1, "LGTServiceProviderSelect"

    const-string v2, "EVENT_EF_WRITE_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 305
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$000(Lcom/android/phone/LGTServiceProviderSelect;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 308
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$100(Lcom/android/phone/LGTServiceProviderSelect;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm.sim.roaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 309
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #calls: Lcom/android/phone/LGTServiceProviderSelect;->sendImsiStatusChangeNoti()V
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$200(Lcom/android/phone/LGTServiceProviderSelect;)V

    .line 311
    :cond_36
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$300(Lcom/android/phone/LGTServiceProviderSelect;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$300(Lcom/android/phone/LGTServiceProviderSelect;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    const-string v1, "gsm.sim.roaming"

    iget-object v2, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #getter for: Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/LGTServiceProviderSelect;->access$100(Lcom/android/phone/LGTServiceProviderSelect;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    #calls: Lcom/android/phone/LGTServiceProviderSelect;->reboot()V
    invoke-static {v1}, Lcom/android/phone/LGTServiceProviderSelect;->access$400(Lcom/android/phone/LGTServiceProviderSelect;)V

    goto :goto_6

    .line 322
    .end local v0           #message:Landroid/os/Message;
    :sswitch_5e
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    iget-object v1, v1, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    iget-object v1, v1, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 323
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    iget-object v1, v1, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 325
    :cond_75
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$1;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    invoke-virtual {v1}, Lcom/android/phone/LGTServiceProviderSelect;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e05d2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 300
    :sswitch_data_86
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_5e
    .end sparse-switch
.end method
