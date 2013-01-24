.class Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$2;
.super Ljava/lang/Object;
.source "EditAutoRejectVideoCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$2;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 188
    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "onClick editBox"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$2;->this$0:Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    #calls: Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->alertdialogSearch()V
    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->access$100(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    .line 190
    return-void
.end method
