.class Lcom/android/phone/LGTNetworkSelectMain$6;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMain;->rebootAfterAutoSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSelectMain;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSelectMain;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMain$6;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$6;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTNetworkSelectMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 354
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 355
    return-void
.end method
