.class Lcom/android/phone/LGTNetworkSelectMode$2;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMode;->networkSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSelectMode;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSelectMode;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 202
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "networkSelectDialog() - positivebtn click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z
    invoke-static {v0, v1}, Lcom/android/phone/LGTNetworkSelectMode;->access$202(Lcom/android/phone/LGTNetworkSelectMode;Z)Z

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    const-class v2, Lcom/android/phone/NetworkSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode$2;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    invoke-virtual {v1, v0}, Lcom/android/phone/LGTNetworkSelectMode;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method
