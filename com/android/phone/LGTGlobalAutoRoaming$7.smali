.class Lcom/android/phone/LGTGlobalAutoRoaming$7;
.super Ljava/lang/Object;
.source "LGTGlobalAutoRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTGlobalAutoRoaming;->showDownloadProgressDialog()V
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
    .line 323
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$7;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$7;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$002(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 326
    return-void
.end method
