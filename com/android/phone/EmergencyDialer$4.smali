.class Lcom/android/phone/EmergencyDialer$4;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .registers 2
    .parameter

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1104
    if-nez p2, :cond_17

    .line 1105
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    #setter for: Lcom/android/phone/EmergencyDialer;->mSimNum:I
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$202(Lcom/android/phone/EmergencyDialer;I)I

    .line 1106
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    #calls: Lcom/android/phone/EmergencyDialer;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$300(Lcom/android/phone/EmergencyDialer;)V

    .line 1111
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/EmergencyDialer;->mSimNum:I
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$202(Lcom/android/phone/EmergencyDialer;I)I

    .line 1112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1113
    return-void

    .line 1107
    :cond_17
    if-ne p2, v1, :cond_d

    .line 1108
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v1, 0x2

    #setter for: Lcom/android/phone/EmergencyDialer;->mSimNum:I
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$202(Lcom/android/phone/EmergencyDialer;I)I

    .line 1109
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    #calls: Lcom/android/phone/EmergencyDialer;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$300(Lcom/android/phone/EmergencyDialer;)V

    goto :goto_d
.end method
