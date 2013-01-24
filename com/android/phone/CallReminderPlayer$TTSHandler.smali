.class Lcom/android/phone/CallReminderPlayer$TTSHandler;
.super Landroid/os/Handler;
.source "CallReminderPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallReminderPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallReminderPlayer;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallReminderPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer$TTSHandler;->this$0:Lcom/android/phone/CallReminderPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallReminderPlayer;Lcom/android/phone/CallReminderPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/android/phone/CallReminderPlayer$TTSHandler;-><init>(Lcom/android/phone/CallReminderPlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 754
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6

    .line 768
    :pswitch_5
    return-void

    .line 754
    :pswitch_data_6
    .packed-switch 0x4000
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
