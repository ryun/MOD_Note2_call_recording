.class Lcom/android/phone/CallNotifier$1;
.super Landroid/os/Handler;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hideMmiDialog()V

    .line 114
    return-void
.end method
