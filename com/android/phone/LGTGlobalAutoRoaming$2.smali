.class Lcom/android/phone/LGTGlobalAutoRoaming$2;
.super Landroid/content/BroadcastReceiver;
.source "LGTGlobalAutoRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTGlobalAutoRoaming;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTGlobalAutoRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$2;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$2;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    #calls: Lcom/android/phone/LGTGlobalAutoRoaming;->onReceiveBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$100(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/content/Intent;)V

    .line 148
    return-void
.end method
