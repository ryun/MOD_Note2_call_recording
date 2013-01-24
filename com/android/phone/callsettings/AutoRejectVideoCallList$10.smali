.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$10;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 520
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$10;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$10;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 525
    return-void
.end method
