.class Lcom/android/phone/callsettings/IpCallCdma$1;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->initLayout(Landroid/view/View;)V
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
    .line 249
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 252
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 253
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v3, v2, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_20

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 253
    :cond_20
    const/4 v2, 0x0

    goto :goto_1a

    .line 255
    :cond_22
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$1;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$000(Lcom/android/phone/callsettings/IpCallCdma;)V

    .line 256
    return-void
.end method
