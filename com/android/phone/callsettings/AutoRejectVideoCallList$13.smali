.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$13;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .registers 2
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$13;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 559
    return-void
.end method
