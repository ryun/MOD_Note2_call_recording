.class public Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CaptureImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageFactory"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/phone/callsettings/CaptureImageViewer;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context_"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;->context:Landroid/content/Context;

    .line 182
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 185
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, i:Landroid/widget/ImageView;
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 187
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-object v0
.end method
