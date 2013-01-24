.class Lcom/android/phone/DTMFTwelveKeyDialerView;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerView.java"


# instance fields
.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 72
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_b

    .line 73
    packed-switch v0, :pswitch_data_24

    .line 82
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_f
    return v1

    .line 76
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_f

    :cond_1d
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_f

    .line 73
    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .registers 2
    .parameter "dialer"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 61
    return-void
.end method
