.class Lcom/android/phone/LGTNetworkSetting$2;
.super Ljava/lang/Object;
.source "LGTNetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 299
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSetting$2;->this$0:Lcom/android/phone/LGTNetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 301
    packed-switch p2, :pswitch_data_32

    .line 311
    const-string v0, "LGTNetworkSetting"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_c
    :goto_c
    const/4 v0, 0x1

    return v0

    .line 303
    :pswitch_e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 304
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] networkModeDialog KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting$2;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #getter for: Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSetting;->access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 308
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting$2;->this$0:Lcom/android/phone/LGTNetworkSetting;

    #getter for: Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkSetting;->access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    goto :goto_c

    .line 301
    nop

    :pswitch_data_32
    .packed-switch 0x4
        :pswitch_e
    .end packed-switch
.end method
