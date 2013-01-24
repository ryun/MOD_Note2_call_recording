.class Lcom/android/phone/LGTGlobalAutoRoaming$6;
.super Ljava/lang/Object;
.source "LGTGlobalAutoRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 317
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$6;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$6;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    iget-object v0, v0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$6;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    iget-object v1, v1, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$6;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$002(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 321
    return-void
.end method
