.class interface abstract Lcom/android/phone/RcsBroadcastReceiver$RcsActionHandler;
.super Ljava/lang/Object;
.source "RcsBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RcsBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RcsActionHandler"
.end annotation


# virtual methods
.method public abstract handleCshInfo(Landroid/content/Intent;)V
.end method

.method public abstract handleIncommingIMandFT(Landroid/content/Intent;)V
.end method

.method public abstract handleInvitation(ZLandroid/os/Bundle;)V
.end method

.method public abstract handleRcsAction(I)V
.end method

.method public abstract handleRcsExtraAction(Ljava/lang/String;)V
.end method

.method public abstract handleRcsMenuOption(Ljava/lang/String;)V
.end method
