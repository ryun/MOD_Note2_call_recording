.class Lcom/android/phone/InVTCallScreen$57;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 12600
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 12602
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12603
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15800(Lcom/android/phone/InVTCallScreen;)V

    .line 12606
    :goto_d
    return-void

    .line 12605
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$57;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15900(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_d
.end method
