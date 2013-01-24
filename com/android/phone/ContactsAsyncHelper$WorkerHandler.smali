.class Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/android/phone/ContactsAsyncHelper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/phone/ContactsAsyncHelper;

    .line 205
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 206
    return-void
.end method

.method private getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "photo"

    .prologue
    const/4 v8, 0x0

    .line 263
    instance-of v9, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_7

    move-object v4, v8

    .line 288
    .end local p2
    :cond_6
    :goto_6
    return-object v4

    .line 266
    .restart local p2
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 268
    .local v0, iconSize:I
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 269
    .local v4, orgBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 270
    .local v6, orgWidth:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 271
    .local v5, orgHeight:I
    if-le v6, v5, :cond_3c

    move v1, v6

    .line 273
    .local v1, longerEdge:I
    :goto_23
    if-le v1, v0, :cond_6

    .line 274
    int-to-float v9, v1

    int-to-float v10, v0

    div-float v7, v9, v10

    .line 275
    .local v7, ratio:F
    int-to-float v9, v6

    div-float/2addr v9, v7

    float-to-int v3, v9

    .line 276
    .local v3, newWidth:I
    int-to-float v9, v5

    div-float/2addr v9, v7

    float-to-int v2, v9

    .line 279
    .local v2, newHeight:I
    if-lez v3, :cond_33

    if-gtz v2, :cond_3e

    .line 280
    :cond_33
    const-string v9, "ContactsAsyncHelper"

    const-string v10, "Photo icon\'s width or height become 0."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 281
    goto :goto_6

    .end local v1           #longerEdge:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v7           #ratio:F
    :cond_3c
    move v1, v5

    .line 271
    goto :goto_23

    .line 286
    .restart local v1       #longerEdge:I
    .restart local v2       #newHeight:I
    .restart local v3       #newWidth:I
    .restart local v7       #ratio:F
    :cond_3e
    const/4 v8, 0x1

    invoke-static {v4, v3, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_6
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;

    .line 212
    .local v0, args:Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_68

    .line 251
    :goto_a
    iget-object v5, p0, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/phone/ContactsAsyncHelper;

    #getter for: Lcom/android/phone/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/ContactsAsyncHelper;->access$000(Lcom/android/phone/ContactsAsyncHelper;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 252
    .local v4, reply:Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 253
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 255
    return-void

    .line 214
    .end local v4           #reply:Landroid/os/Message;
    :pswitch_22
    const/4 v3, 0x0

    .line 216
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_23
    iget-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_59

    move-result-object v3

    .line 222
    :goto_30
    if-eqz v3, :cond_62

    .line 225
    :try_start_32
    iget-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;->getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;
    :try_end_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_48} :catch_49

    goto :goto_a

    .line 230
    :catch_49
    move-exception v2

    .line 231
    .local v2, exception:Ljava/lang/OutOfMemoryError;
    const-string v5, "ContactsAsyncHelper"

    const-string v6, "getBitmap outOfMemory exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 233
    iput-object v8, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 234
    iput-object v8, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    goto :goto_a

    .line 218
    .end local v2           #exception:Ljava/lang/OutOfMemoryError;
    :catch_59
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ContactsAsyncHelper"

    const-string v6, "Error opening photo input stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 240
    .end local v1           #e:Ljava/lang/Exception;
    :cond_62
    iput-object v8, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object v8, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    goto :goto_a

    .line 212
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method
