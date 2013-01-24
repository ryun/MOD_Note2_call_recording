.class Lcom/android/phone/DataRoamingGuard$RoamHandler;
.super Landroid/os/Handler;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingGuard;


# direct methods
.method private constructor <init>(Lcom/android/phone/DataRoamingGuard;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$RoamHandler;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/DataRoamingGuard;Lcom/android/phone/DataRoamingGuard$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6

    .line 237
    :pswitch_5
    return-void

    .line 228
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
