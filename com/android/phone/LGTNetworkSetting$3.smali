.class Lcom/android/phone/LGTNetworkSetting$3;
.super Ljava/lang/Object;
.source "LGTNetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSetting;->networkModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSetting$3;->this$0:Lcom/android/phone/LGTNetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 291
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] networkModeDialog setNegativeButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting$3;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #getter for: Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSetting;->access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 295
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting$3;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #getter for: Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSetting;->access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 296
    :cond_1f
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void
.end method
