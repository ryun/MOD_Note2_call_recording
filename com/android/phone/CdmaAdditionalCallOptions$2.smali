.class Lcom/android/phone/CdmaAdditionalCallOptions$2;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$2;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$2;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    sget-object v1, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    invoke-static {v0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$000(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    .line 197
    return-void
.end method
