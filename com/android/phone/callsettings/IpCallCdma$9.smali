.class Lcom/android/phone/callsettings/IpCallCdma$9;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCallCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma;)V
    .registers 2
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$9;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$9;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCallCdma;->isAdded()Z

    move-result v0

    if-nez v0, :cond_10

    .line 848
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$9;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-string v1, "Fragment finished. We ignore updateRejectMessage."

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 854
    :cond_f
    :goto_f
    return-void

    .line 851
    :cond_10
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$9;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$900(Lcom/android/phone/callsettings/IpCallCdma;)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$9;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$200(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 853
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$9;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_f
.end method
