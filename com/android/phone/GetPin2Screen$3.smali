.class Lcom/android/phone/GetPin2Screen$3;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 129
    :goto_10
    return-void

    .line 128
    :cond_11
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$3;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->returnResult()V
    invoke-static {v0}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;)V

    goto :goto_10
.end method
