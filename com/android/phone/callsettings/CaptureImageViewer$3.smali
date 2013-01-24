.class Lcom/android/phone/callsettings/CaptureImageViewer$3;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CaptureImageViewer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CaptureImageViewer;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$100(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Gallery;->setSelection(I)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 144
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    .line 146
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method
