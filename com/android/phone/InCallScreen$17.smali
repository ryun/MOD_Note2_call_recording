.class Lcom/android/phone/InCallScreen$17;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showEmailSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 4604
    iput-object p1, p0, Lcom/android/phone/InCallScreen$17;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "di"
    .parameter "pos"

    .prologue
    .line 4606
    iget-object v1, p0, Lcom/android/phone/InCallScreen$17;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v0, p0, Lcom/android/phone/InCallScreen$17;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3200(Lcom/android/phone/InCallScreen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 4607
    return-void
.end method
