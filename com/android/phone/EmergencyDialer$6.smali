.class Lcom/android/phone/EmergencyDialer$6;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1126
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$6;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1129
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1130
    return-void
.end method
