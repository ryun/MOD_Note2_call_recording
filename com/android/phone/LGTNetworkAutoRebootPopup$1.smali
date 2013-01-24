.class Lcom/android/phone/LGTNetworkAutoRebootPopup$1;
.super Ljava/lang/Object;
.source "LGTNetworkAutoRebootPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkAutoRebootPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 68
    const-string v1, "LGTNetworkAutoRebootPopup "

    const-string v2, " show LGTNetworkAutoRebootPopup on CLick reboot "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 71
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup$1$1;-><init>(Lcom/android/phone/LGTNetworkAutoRebootPopup$1;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method
