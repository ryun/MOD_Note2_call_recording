.class Lcom/android/phone/callsettings/IpCallCdma$3;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 269
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$3;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$3;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallCdma$3;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCallCdma;->access$200(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$300(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$3;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$200(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 275
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$3;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateDeleteItems()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$000(Lcom/android/phone/callsettings/IpCallCdma;)V

    .line 277
    :cond_2c
    return-void
.end method
