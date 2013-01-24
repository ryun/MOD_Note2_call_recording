.class Lcom/android/phone/RoamingAutoDialSettings$1;
.super Ljava/lang/Object;
.source "RoamingAutoDialSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingAutoDialSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingAutoDialSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialSettings$1;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/RoamingAutoDialSettings$1;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings$1;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    const-class v3, Lcom/android/phone/RoamingAutoDialMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/RoamingAutoDialSettings;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
