.class Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    const/16 v3, 0x64

    .line 935
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemLongClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$200(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$200(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    .line 937
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->val$position:I

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1302(Lcom/android/phone/callsettings/IpCallCdma;I)I

    .line 938
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const/4 v1, 0x4

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$202(Lcom/android/phone/callsettings/IpCallCdma;I)I

    .line 939
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->removeDialog(I)V

    .line 940
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v0, v3}, Lcom/android/phone/callsettings/IpCallCdma;->showDialog(I)V

    .line 941
    const/4 v0, 0x1

    .line 943
    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method
