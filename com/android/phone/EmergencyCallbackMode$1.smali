.class Lcom/android/phone/EmergencyCallbackMode$1;
.super Ljava/lang/Object;
.source "EmergencyCallbackMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackMode;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackMode;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackMode$1;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode$1;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    #calls: Lcom/android/phone/EmergencyCallbackMode;->emergencyCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyCallbackMode;->access$000(Lcom/android/phone/EmergencyCallbackMode;)V

    .line 54
    return-void
.end method
