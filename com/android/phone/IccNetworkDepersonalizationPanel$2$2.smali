.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V
    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 136
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    .line 137
    return-void
.end method
