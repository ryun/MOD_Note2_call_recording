.class public Lcom/android/phone/InCallContactPhoto;
.super Landroid/widget/ImageView;
.source "InCallContactPhoto.java"


# instance fields
.field private mInsetImageView:Landroid/widget/ImageView;

.field private mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method private hideInset()V
    .registers 3

    .prologue
    .line 235
    const-string v0, "- hideInset()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 237
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    :cond_16
    return-void
.end method

.method private isLoRes(Landroid/graphics/Bitmap;)Z
    .registers 6
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 224
    const-string v2, "is_lo_res_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 230
    :cond_9
    :goto_9
    return v1

    .line 227
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCallContactPhoto;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 229
    .local v0, LO_RES_THRESHOLD_WIDTH:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isLoRes: checking bitmap with width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v0, :cond_9

    const/4 v1, 0x1

    goto :goto_9
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 261
    const-string v0, "InCallContactPhoto"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private showInset(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "drawable"

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- showInset(Drawable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    .line 245
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :cond_2b
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bm"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageBitmap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 13
    .parameter "inputDrawable"

    .prologue
    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImageDrawable("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 116
    .local v6, startTime:J
    const/4 v1, 0x0

    .line 123
    .local v1, blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v8, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v8, :cond_62

    .line 125
    iput-object p1, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    const/4 v5, 0x0

    .line 135
    .local v5, showInsetImage:Z
    instance-of v8, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_d2

    move-object v8, p1

    .line 136
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 144
    .local v4, inputBitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_85

    .line 145
    const-string v8, "InCallContactPhoto"

    const-string v9, "setImageDrawable: null bitmap from inputDrawable.getBitmap()!"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v4           #inputBitmap:Landroid/graphics/Bitmap;
    :cond_3c
    :goto_3c
    if-nez v1, :cond_41

    const/4 v8, 0x1

    if-ne v5, v8, :cond_fd

    .line 186
    :cond_41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Show the special effect!  blurredBitmapDrawable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 190
    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 191
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    .end local v5           #showInsetImage:Z
    :cond_62
    :goto_62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 205
    .local v2, endTime:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImageDrawable() done: *ELAPSED* = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v2, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 206
    return-void

    .line 148
    .end local v2           #endTime:J
    .restart local v4       #inputBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #showInsetImage:Z
    :cond_85
    invoke-direct {p0, v4}, Lcom/android/phone/InCallContactPhoto;->isLoRes(Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_91

    .line 149
    const-string v8, "- not a lo-res bitmap; no special effect."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    goto :goto_3c

    .line 155
    :cond_91
    const-string v8, "- got a lo-res bitmap; blurring..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 156
    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 157
    invoke-static {v4}, Lcom/android/phone/BitmapUtils;->createBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, blurredBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/phone/InCallContactPhoto;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v1, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 169
    .restart local v1       #blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Created blurredBitmapDrawable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 171
    .end local v0           #blurredBitmap:Landroid/graphics/Bitmap;
    :cond_c3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 172
    const/4 v5, 0x1

    goto/16 :goto_3c

    .line 177
    .end local v4           #inputBitmap:Landroid/graphics/Bitmap;
    :cond_d2
    const-string v8, "InCallContactPhoto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setImageDrawable: inputDrawable \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a BitmapDrawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 193
    :cond_f2
    const v8, 0x7f0201f2

    invoke-super {p0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/phone/InCallContactPhoto;->showInset(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_62

    .line 197
    :cond_fd
    const-string v8, "- null blurredBitmapDrawable; don\'t show the special effect."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    goto/16 :goto_62
.end method

.method public setImageResource(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageResource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 88
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageURI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 99
    return-void
.end method

.method public setInsetImageView(Landroid/widget/ImageView;)V
    .registers 2
    .parameter "imageView"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    .line 79
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 252
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 255
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 257
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    return-void
.end method
