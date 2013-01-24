.class Lcom/android/phone/InVTCallScreen$30;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->button_initialize()V
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
    .line 10655
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$30;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .registers 3

    .prologue
    .line 10657
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$30;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 10658
    return-void
.end method
