.class Lcom/android/phone/callsettings/PresetImage$3;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PresetImage;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .registers 2
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v1, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    .line 501
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v1, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    #getter for: Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    .line 502
    const-string v0, "PresetImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width, outputX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v2, v2, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v0, "PresetImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height, outputY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage$3;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget v2, v2, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method
