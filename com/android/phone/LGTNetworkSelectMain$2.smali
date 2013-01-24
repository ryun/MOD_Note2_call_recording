.class Lcom/android/phone/LGTNetworkSelectMain$2;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMain;->manualNetworkSettingDialog()V
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
    .line 297
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 299
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/LGTNetworkSelectMain;->access$802(I)I

    .line 300
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    #calls: Lcom/android/phone/LGTNetworkSelectMain;->initState()V
    invoke-static {v1}, Lcom/android/phone/LGTNetworkSelectMain;->access$900(Lcom/android/phone/LGTNetworkSelectMain;)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    const-class v2, Lcom/android/phone/LGTNetworkSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain$2;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-virtual {v1, v0}, Lcom/android/phone/LGTNetworkSelectMain;->startActivity(Landroid/content/Intent;)V

    .line 303
    return-void
.end method
