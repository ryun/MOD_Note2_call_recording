.class Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 947
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 950
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

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

    .line 951
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$200(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ee

    .line 952
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->val$position:I

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1302(Lcom/android/phone/callsettings/IpCallCdma;I)I

    .line 953
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1202(Lcom/android/phone/callsettings/IpCallCdma;I)I

    .line 954
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const/4 v1, 0x4

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$202(Lcom/android/phone/callsettings/IpCallCdma;I)I

    .line 955
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$1402(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTempEditString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$1400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 958
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 959
    const-string v0, "SELECTED_ITEM"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mTempEditString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$1400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v0, "UPDATE_MODE"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 962
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mIpNumberString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->access$1500(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 963
    const-string v0, "IS_DEFAULT"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 964
    :cond_d9
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-class v2, Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0e0442

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/IpCallCdma;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 966
    :cond_ee
    return-void
.end method
