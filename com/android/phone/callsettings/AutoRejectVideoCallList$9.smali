.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 504
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 506
    packed-switch p2, :pswitch_data_10

    .line 516
    :goto_3
    return-void

    .line 508
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->callMatchCriteriaToEditNum()V
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    goto :goto_3

    .line 511
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteDialog()V

    goto :goto_3

    .line 506
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method
