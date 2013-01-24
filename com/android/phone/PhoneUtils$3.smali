.class final Lcom/android/phone/PhoneUtils$3;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1847
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1849
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1850
    const-string v0, "PhoneUtils"

    const-string v1, "removed the mmi failed dialog after 5 sec..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1853
    :cond_14
    return-void
.end method
