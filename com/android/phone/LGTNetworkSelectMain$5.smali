.class Lcom/android/phone/LGTNetworkSelectMain$5;
.super Ljava/lang/Object;
.source "LGTNetworkSelectMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkSelectMain;->rebootDialog()V
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
    .line 339
    iput-object p1, p0, Lcom/android/phone/LGTNetworkSelectMain$5;->this$0:Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 342
    return-void
.end method
