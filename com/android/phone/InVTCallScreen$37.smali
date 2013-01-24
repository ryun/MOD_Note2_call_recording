.class Lcom/android/phone/InVTCallScreen$37;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 11498
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 11500
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 11501
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11502
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$37;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11503
    const-string v0, "InVTCallScreen"

    const-string v1, "First Near End View Clickongoinged "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11505
    :cond_19
    return v2
.end method
