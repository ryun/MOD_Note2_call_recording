.class public Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
.super Landroid/view/View;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCircle"
.end annotation


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "radius"

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 963
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 964
    invoke-direct {p0, p3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->init(F)V

    .line 965
    return-void
.end method

.method private init(F)V
    .registers 4
    .parameter "radius"

    .prologue
    .line 973
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 974
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 975
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1100(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 977
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 978
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 987
    :goto_2e
    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    .line 988
    return-void

    .line 980
    :cond_31
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$700(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_47

    .line 981
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2e

    .line 983
    :cond_47
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2e
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 1026
    const-string v1, "IncomingCallWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchGenericMotionEvent : event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1028
    .local v0, action:I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_28

    const/4 v1, 0x7

    if-eq v0, v1, :cond_28

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2a

    .line 1031
    :cond_28
    const/4 v1, 0x0

    .line 1033
    :goto_29
    return v1

    :cond_2a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_29
.end method

.method public isInCircle(FF)Z
    .registers 21
    .parameter "x"
    .parameter "y"

    .prologue
    .line 994
    const-wide v1, 0x3ff4cccccccccccdL

    .line 996
    .local v1, ACTIVE_RATIO:D
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 997
    .local v13, tmpPos:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getLocationOnScreen([I)V

    .line 999
    const/4 v14, 0x0

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v7, v14

    .line 1000
    .local v7, pivotX:F
    const/4 v14, 0x1

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I
    invoke-static {v15}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1200(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v8, v14

    .line 1002
    .local v8, pivotY:F
    sub-float v14, p1, v7

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 1003
    .local v3, dx:D
    sub-float v14, p2, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 1005
    .local v5, dy:D
    mul-double v14, v3, v3

    mul-double v16, v5, v5

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1007
    .local v9, posLength:D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    float-to-double v14, v14

    div-double v11, v9, v14

    .line 1009
    .local v11, ratio:D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v14, v14, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isInCircle - x : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " y : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ratio : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1011
    const-wide v14, 0x3ff4cccccccccccdL

    cmpg-double v14, v11, v14

    if-gez v14, :cond_8a

    .line 1012
    const/4 v14, 0x1

    .line 1014
    :goto_89
    return v14

    :cond_8a
    const/4 v14, 0x0

    goto :goto_89
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1021
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 969
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 970
    :cond_9
    return-void
.end method
