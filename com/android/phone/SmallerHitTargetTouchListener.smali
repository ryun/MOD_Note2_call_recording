.class public Lcom/android/phone/SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "SmallerHitTargetTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private X_HIT_MAX:I

.field private X_HIT_MIN:I

.field private Y_HIT_MAX:I

.field private Y_HIT_MIN:I

.field private mEdgeOptions:I

.field private mselectDirection:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x5a

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 61
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 63
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 65
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 83
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 85
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 92
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "edgeOptions"

    .prologue
    const/16 v2, 0x5a

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 61
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 63
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 65
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 83
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 85
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 96
    iput p1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 97
    invoke-direct {p0}, Lcom/android/phone/SmallerHitTargetTouchListener;->makeHitEdge()V

    .line 98
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .parameter "selectDirection"
    .parameter "touchArea"

    .prologue
    const/16 v2, 0x5a

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 61
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 63
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 65
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 83
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    .line 85
    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 102
    iput p1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    .line 103
    invoke-direct {p0, p2}, Lcom/android/phone/SmallerHitTargetTouchListener;->fixHitArea(I)V

    .line 104
    return-void
.end method

.method private fixHitArea(I)V
    .registers 3
    .parameter "hitArea"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_8

    .line 123
    iput p1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 125
    :cond_8
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_12

    .line 126
    rsub-int/lit8 v0, p1, 0x64

    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 128
    :cond_12
    return-void
.end method

.method private makeHitEdge()V
    .registers 4

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_b

    .line 108
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    .line 110
    :cond_b
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_13

    .line 111
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    .line 113
    :cond_13
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1b

    .line 114
    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    .line 116
    :cond_1b
    iget v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_23

    .line 117
    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    .line 119
    :cond_23
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_47

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v2, v10

    .line 148
    .local v2, touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v4, v10

    .line 150
    .local v4, touchY:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 151
    .local v7, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 154
    .local v6, viewHeight:I
    mul-int/lit8 v10, v2, 0x64

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 155
    .local v3, touchXPercent:I
    mul-int/lit8 v10, v4, 0x64

    int-to-float v10, v10

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-int v5, v10

    .line 164
    .local v5, touchYPercent:I
    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    if-lt v3, v10, :cond_36

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    if-gt v3, v10, :cond_36

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    if-lt v5, v10, :cond_36

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    if-le v5, v10, :cond_3e

    .line 169
    :cond_36
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 170
    .local v0, downEventHit:Ljava/lang/Boolean;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    .end local v2           #touchX:I
    .end local v3           #touchXPercent:I
    .end local v4           #touchY:I
    .end local v5           #touchYPercent:I
    .end local v6           #viewHeight:I
    .end local v7           #viewWidth:I
    :cond_3d
    :goto_3d
    return v8

    .line 176
    .end local v0           #downEventHit:Ljava/lang/Boolean;
    .restart local v2       #touchX:I
    .restart local v3       #touchXPercent:I
    .restart local v4       #touchY:I
    .restart local v5       #touchYPercent:I
    .restart local v6       #viewHeight:I
    .restart local v7       #viewWidth:I
    :cond_3e
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 177
    .restart local v0       #downEventHit:Ljava/lang/Boolean;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move v8, v9

    .line 178
    goto :goto_3d

    .line 187
    .end local v0           #downEventHit:Ljava/lang/Boolean;
    .end local v2           #touchX:I
    .end local v3           #touchXPercent:I
    .end local v4           #touchY:I
    .end local v5           #touchYPercent:I
    .end local v6           #viewHeight:I
    .end local v7           #viewWidth:I
    :cond_47
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, tag:Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 189
    .restart local v0       #downEventHit:Ljava/lang/Boolean;
    if-eqz v1, :cond_58

    instance-of v10, v1, Ljava/lang/Boolean;

    if-eqz v10, :cond_58

    move-object v0, v1

    .line 190
    check-cast v0, Ljava/lang/Boolean;

    .line 193
    :cond_58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3d

    move v8, v9

    goto :goto_3d
.end method
