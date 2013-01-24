.class Lcom/android/phone/EmergencyCallList$2;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallList;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    #getter for: Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/EmergencyCallList;->access$000(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    #getter for: Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/phone/EmergencyCallList;->access$100(Lcom/android/phone/EmergencyCallList;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    const-string v1, "SKTRADDialOption"

    const-string v2, "abroad"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-virtual {v1, v0}, Lcom/android/phone/EmergencyCallList;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method
