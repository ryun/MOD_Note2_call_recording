.class public Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerViewForVT.java"


# instance fields
.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 66
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v1, :cond_b

    .line 67
    packed-switch v0, :pswitch_data_24

    .line 77
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_f
    return v1

    .line 70
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_f

    :cond_1d
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_f

    .line 67
    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .parameter "event"

    .prologue
    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 84
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 85
    .local v16, y:I
    const/4 v4, 0x0

    .line 86
    .local v4, closestDeltaX:I
    const/4 v5, 0x0

    .line 88
    .local v5, closestDeltaY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    .line 89
    .local v14, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v10, 0x7fffffff

    .line 90
    .local v10, minDistance:I
    const/4 v3, 0x0

    .line 92
    .local v3, closest:Landroid/view/View;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 94
    .local v11, numTouchables:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .local v13, touchableBounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_24
    if-ge v9, v11, :cond_9a

    .line 97
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 100
    .local v12, touchable:Landroid/view/View;
    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 104
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_41

    .line 105
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 139
    .end local v12           #touchable:Landroid/view/View;
    :goto_40
    return v17

    .line 109
    .restart local v12       #touchable:Landroid/view/View;
    :cond_41
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_72

    .line 110
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v6, v17, v15

    .line 118
    .local v6, deltaX:I
    :goto_51
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_85

    .line 119
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v7, v17, v16

    .line 126
    .local v7, deltaY:I
    :goto_63
    mul-int v17, v6, v6

    mul-int v18, v7, v7

    add-int v8, v17, v18

    .line 127
    .local v8, distanceSquared:I
    if-ge v8, v10, :cond_6f

    .line 128
    move v10, v8

    .line 129
    move-object v3, v12

    .line 130
    move v4, v6

    .line 131
    move v5, v7

    .line 96
    :cond_6f
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 111
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distanceSquared:I
    :cond_72
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_83

    .line 112
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v6, v17, v15

    .restart local v6       #deltaX:I
    goto :goto_51

    .line 114
    .end local v6           #deltaX:I
    :cond_83
    const/4 v6, 0x0

    .restart local v6       #deltaX:I
    goto :goto_51

    .line 120
    :cond_85
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_98

    .line 121
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v7, v17, v16

    .restart local v7       #deltaY:I
    goto :goto_63

    .line 123
    .end local v7           #deltaY:I
    :cond_98
    const/4 v7, 0x0

    .restart local v7       #deltaY:I
    goto :goto_63

    .line 135
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v12           #touchable:Landroid/view/View;
    :cond_9a
    if-eqz v3, :cond_b0

    .line 136
    int-to-float v0, v4

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 137
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_40

    .line 139
    :cond_b0
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_40
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .registers 2
    .parameter "dialer"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 54
    return-void
.end method
