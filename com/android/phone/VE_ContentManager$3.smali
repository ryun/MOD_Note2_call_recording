.class Lcom/android/phone/VE_ContentManager$3;
.super Ljava/lang/Object;
.source "VE_ContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VE_ContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VE_ContentManager;


# direct methods
.method constructor <init>(Lcom/android/phone/VE_ContentManager;)V
    .registers 2
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2602(Lcom/android/phone/VE_ContentManager;Z)Z

    .line 699
    :try_start_6
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    #calls: Lcom/android/phone/VE_ContentManager;->download_Content()V
    invoke-static {v1}, Lcom/android/phone/VE_ContentManager;->access$3500(Lcom/android/phone/VE_ContentManager;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_c

    .line 704
    :goto_b
    return-void

    .line 700
    :catch_c
    move-exception v0

    .line 701
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 702
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager$3;->this$0:Lcom/android/phone/VE_ContentManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z
    invoke-static {v1, v2}, Lcom/android/phone/VE_ContentManager;->access$2502(Lcom/android/phone/VE_ContentManager;Z)Z

    goto :goto_b
.end method
