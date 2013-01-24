.class Lcom/android/phone/callsettings/AutoRejectList$10;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$10;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$10;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1002(Lcom/android/phone/callsettings/AutoRejectList;I)I

    .line 559
    return-void
.end method
