.class Lcom/android/phone/AnimationUtils$CrossFadeDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossFadeDrawable"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mCrossFadeAlpha:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "layers"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 159
    const-string v0, "crossFadeAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_12

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 160
    return-void

    .line 159
    :array_12
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/16 v3, 0xff

    .line 181
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    .local v0, first:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    .local v1, second:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-lez v2, :cond_1b

    .line 185
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    :cond_1b
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-ge v2, v3, :cond_2c

    .line 191
    iget v2, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 195
    :cond_2c
    return-void
.end method

.method public getAnimator()Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public setCrossFadeAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 171
    iput p1, p0, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    .line 172
    invoke-virtual {p0}, Lcom/android/phone/AnimationUtils$CrossFadeDrawable;->invalidateSelf()V

    .line 173
    return-void
.end method
