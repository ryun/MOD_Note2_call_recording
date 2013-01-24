.class Lcom/android/phone/VE_ContentManager$5;
.super Ljava/lang/Object;
.source "VE_ContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VE_ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VE_ContentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/VE_ContentManager;)V
    .registers 2
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Draw_Frame()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 912
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$2700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v2}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/AMF_Player;->get_frame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/VE_ContentManager;->mBitmapData:Landroid/graphics/Bitmap;

    .line 914
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    iget-object v0, v0, Lcom/android/phone/VE_ContentManager;->mBitmapData:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_49

    .line 915
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$3400(Lcom/android/phone/VE_ContentManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 917
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$2700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/AMF_Player;->set_framestate(IZ)V

    .line 918
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$4008(Lcom/android/phone/VE_ContentManager;)I

    .line 920
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_49

    .line 921
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v0, v3}, Lcom/android/phone/VE_ContentManager;->access$4002(Lcom/android/phone/VE_ContentManager;I)I

    .line 924
    :cond_49
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 898
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3902(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 899
    :goto_7
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$2200(Lcom/android/phone/VE_ContentManager;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 900
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->isOnPause:Z
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$3000(Lcom/android/phone/VE_ContentManager;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 901
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;
    invoke-static {v0}, Lcom/android/phone/VE_ContentManager;->access$2700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #getter for: Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$4000(Lcom/android/phone/VE_ContentManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/AMF_Player;->get_framestate(I)Z

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 902
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager$5;->Draw_Frame()V

    .line 906
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    const/16 v1, 0x64

    #calls: Lcom/android/phone/VE_ContentManager;->sleep(I)V
    invoke-static {v0, v1}, Lcom/android/phone/VE_ContentManager;->access$3800(Lcom/android/phone/VE_ContentManager;I)V

    goto :goto_7

    .line 908
    :cond_34
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager$5;->this$0:Lcom/android/phone/VE_ContentManager;

    #setter for: Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z
    invoke-static {v0, v2}, Lcom/android/phone/VE_ContentManager;->access$3902(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 909
    return-void
.end method
