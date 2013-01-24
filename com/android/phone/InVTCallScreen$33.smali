.class Lcom/android/phone/InVTCallScreen$33;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
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
    .line 11231
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11233
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 11234
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 11235
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)V

    .line 11255
    :goto_18
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mNearEndViewClicked:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$9102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11257
    :cond_1d
    return v2

    .line 11237
    :cond_1e
    const-string v0, "InVTCallScreen"

    const-string v1, "Long press is inputed for show me"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11239
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7700(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 11240
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0e03cf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 11243
    :cond_4a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11244
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v3, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11245
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11246
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11247
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11248
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$9202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11249
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;)V

    .line 11250
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$5202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11251
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11252
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$33;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_18
.end method
