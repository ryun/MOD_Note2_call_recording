.class Lcom/android/phone/sip/SipEditor$1;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipEditor;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$1;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$1;->this$0:Lcom/android/phone/sip/SipEditor;

    #calls: Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$300(Lcom/android/phone/sip/SipEditor;)V

    .line 240
    return-void
.end method
