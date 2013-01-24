.class Lcom/android/phone/EmergencyCallList$1;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallList;->onResume()V
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
    .line 126
    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallList;->finish()V

    .line 129
    return-void
.end method
