.class Lcom/android/phone/callsettings/CallBarring$3;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$3;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$3;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #calls: Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$600(Lcom/android/phone/callsettings/CallBarring;)V

    .line 325
    return-void
.end method
