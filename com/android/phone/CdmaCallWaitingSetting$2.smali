.class Lcom/android/phone/CdmaCallWaitingSetting$2;
.super Landroid/os/Handler;
.source "CdmaCallWaitingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallWaitingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallWaitingSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallWaitingSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting$2;->this$0:Lcom/android/phone/CdmaCallWaitingSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 368
    return-void
.end method
