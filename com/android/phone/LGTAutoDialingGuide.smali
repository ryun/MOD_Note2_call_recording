.class public Lcom/android/phone/LGTAutoDialingGuide;
.super Landroid/app/Activity;
.source "LGTAutoDialingGuide.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTAutoDialingGuide;->setContentView(I)V

    .line 36
    return-void
.end method
