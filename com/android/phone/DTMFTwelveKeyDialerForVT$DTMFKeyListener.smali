.class Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialerForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .registers 3
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 205
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 388
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 206
    return-void

    .line 388
    nop

    :array_10
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    return-void
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 248
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    int-to-char v0, v3

    .line 251
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_6c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 253
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 258
    .local v1, keyOK:Z
    if-eqz v1, :cond_49

    .line 259
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMFKeyListener reading \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from input."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 261
    :cond_3e
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #setter for: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z
    invoke-static {v3, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$202(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Z)Z

    .line 262
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V
    invoke-static {v3, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$300(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V

    .line 268
    .end local v1           #keyOK:Z
    :cond_48
    :goto_48
    return v2

    .line 263
    .restart local v1       #keyOK:Z
    :cond_49
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMFKeyListener rejecting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from input."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    goto :goto_48

    .line 268
    .end local v1           #keyOK:Z
    :cond_6c
    const/4 v2, 0x0

    goto :goto_48
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 283
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 285
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 287
    .local v1, keyOK:Z
    if-eqz v1, :cond_3b

    .line 288
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Ljava/lang/String;)V

    .line 290
    :cond_34
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$400(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    .line 291
    const/4 v2, 0x1

    .line 294
    :goto_3a
    return v2

    :cond_3b
    const/4 v2, 0x0

    goto :goto_3a
.end method
