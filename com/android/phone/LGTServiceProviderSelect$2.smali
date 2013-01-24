.class Lcom/android/phone/LGTServiceProviderSelect$2;
.super Ljava/lang/Object;
.source "LGTServiceProviderSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTServiceProviderSelect;->reboot()V
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
    .line 335
    iput-object p1, p0, Lcom/android/phone/LGTServiceProviderSelect$2;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect$2;->this$0:Lcom/android/phone/LGTServiceProviderSelect;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTServiceProviderSelect;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 338
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 339
    return-void
.end method
