.class Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference$1;
.super Landroid/os/Handler;
.source "GlobalGsmUmtsSystemSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference$1;->this$0:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 56
    :goto_5
    return-void

    .line 53
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference$1;->this$0:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const-string v1, "auto select done"

    #calls: Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->access$000(Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;Ljava/lang/String;)V

    goto :goto_5

    .line 51
    :pswitch_data_e
    .packed-switch 0x12c
        :pswitch_6
    .end packed-switch
.end method
