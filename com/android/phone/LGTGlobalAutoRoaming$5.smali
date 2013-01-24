.class Lcom/android/phone/LGTGlobalAutoRoaming$5;
.super Ljava/lang/Object;
.source "LGTGlobalAutoRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTGlobalAutoRoaming;->errorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTGlobalAutoRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$5;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 253
    return-void
.end method
