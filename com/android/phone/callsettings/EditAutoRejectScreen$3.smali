.class Lcom/android/phone/callsettings/EditAutoRejectScreen$3;
.super Ljava/lang/Object;
.source "EditAutoRejectScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$3;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 203
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onClick editBox"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$3;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    #calls: Lcom/android/phone/callsettings/EditAutoRejectScreen;->alertdialogSearch()V
    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->access$100(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    .line 205
    return-void
.end method
