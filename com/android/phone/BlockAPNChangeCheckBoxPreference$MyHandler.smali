.class Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "BlockAPNChangeCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BlockAPNChangeCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BlockAPNChangeCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/BlockAPNChangeCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;Lcom/android/phone/BlockAPNChangeCheckBoxPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 171
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_40

    .line 186
    :goto_5
    return-void

    .line 173
    :pswitch_6
    iget-object v2, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/BlockAPNChangeCheckBoxPreference;

    #calls: Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->getBlockAPNChangeEnabled()Z
    invoke-static {v2}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->access$100(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;)Z

    move-result v1

    .line 174
    .local v1, status:Z
    const-string v2, "BlockAPNChangeCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBlockAPNChangeEnabled is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 175
    iget-object v2, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/BlockAPNChangeCheckBoxPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .line 179
    .end local v1           #status:Z
    :pswitch_2b
    iget-object v2, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/BlockAPNChangeCheckBoxPreference;

    #getter for: Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->access$200(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 180
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v2, "Block Access Point Network is changed"

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_5

    .line 171
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2b
    .end packed-switch
.end method
