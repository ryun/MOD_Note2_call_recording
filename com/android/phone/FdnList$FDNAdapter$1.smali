.class Lcom/android/phone/FdnList$FDNAdapter$1;
.super Ljava/lang/Object;
.source "FdnList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnList$FDNAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/FdnList$FDNAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/FdnList$FDNAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/phone/FdnList$FDNAdapter$1;->this$1:Lcom/android/phone/FdnList$FDNAdapter;

    iput p2, p0, Lcom/android/phone/FdnList$FDNAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/phone/FdnList$FDNAdapter$1;->this$1:Lcom/android/phone/FdnList$FDNAdapter;

    iget-object v0, v0, Lcom/android/phone/FdnList$FDNAdapter;->this$0:Lcom/android/phone/FdnList;

    iget v1, p0, Lcom/android/phone/FdnList$FDNAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/phone/FdnList;->fdnCall(I)V

    .line 269
    return-void
.end method
