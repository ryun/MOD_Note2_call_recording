.class Lcom/android/phone/callsettings/IpCallCdma$5;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->softkeyRightRun(Landroid/view/View;)V
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
    .line 334
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1100(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$900(Lcom/android/phone/callsettings/IpCallCdma;)V

    .line 338
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$5;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    return-void
.end method
