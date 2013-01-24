.class Lcom/android/phone/InVTCallScreen$32;
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
    .line 11219
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 11221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 11222
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mNearEndViewClicked:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11224
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
