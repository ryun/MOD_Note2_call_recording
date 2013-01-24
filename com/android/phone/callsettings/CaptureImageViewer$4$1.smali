.class Lcom/android/phone/callsettings/CaptureImageViewer$4$1;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CaptureImageViewer$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer$4;)V
    .registers 2
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const v11, 0x7f090087

    const v10, 0x7f090083

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 474
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f9

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v6, v6, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, where:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 478
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v6, v6, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$500(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$600(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    #setter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$002(Lcom/android/phone/callsettings/CaptureImageViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    const/4 v6, -0x1

    #setter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I
    invoke-static {v5, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$702(Lcom/android/phone/callsettings/CaptureImageViewer;I)I

    .line 483
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090086

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    .line 484
    .local v3, g:Landroid/widget/Gallery;
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 485
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v3, v7}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 486
    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v6, v6, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct {v5, v6, v1}, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 489
    invoke-virtual {v3}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    if-eqz v5, :cond_f9

    .line 490
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAdapter.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v3}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_fa

    .line 494
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 495
    .local v0, Count:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 496
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #Count:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 497
    .restart local v0       #Count:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 510
    .end local v0           #Count:Landroid/widget/RelativeLayout;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #g:Landroid/widget/Gallery;
    .end local v4           #where:Ljava/lang/String;
    :cond_f9
    :goto_f9
    return-void

    .line 502
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #g:Landroid/widget/Gallery;
    .restart local v4       #where:Ljava/lang/String;
    :cond_fa
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 503
    .restart local v0       #Count:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    iget-object v5, p0, Lcom/android/phone/callsettings/CaptureImageViewer$4$1;->this$1:Lcom/android/phone/callsettings/CaptureImageViewer$4;

    iget-object v5, v5, Lcom/android/phone/callsettings/CaptureImageViewer$4;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CaptureImageViewer;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #Count:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 505
    .restart local v0       #Count:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_f9
.end method
