.class Lcom/android/phone/callsettings/VideoCallBarring$3;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$3;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$3;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$600(Lcom/android/phone/callsettings/VideoCallBarring;)V

    .line 329
    return-void
.end method
