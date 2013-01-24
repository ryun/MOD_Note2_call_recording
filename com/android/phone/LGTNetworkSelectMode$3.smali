.class Lcom/android/phone/LGTNetworkSelectMode$3;
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
    .line 208
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMode$3;->this$0:Lcom/android/phone/LGTNetworkSelectMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 210
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "networkSelectDialog() - negativebtn click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    return-void
.end method
