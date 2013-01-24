.class Lcom/android/phone/callsettings/CaptureImageViewer$2;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 129
    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$2;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$2;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    .line 132
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
