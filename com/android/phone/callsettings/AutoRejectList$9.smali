.class Lcom/android/phone/callsettings/AutoRejectList$9;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 540
    packed-switch p2, :pswitch_data_10

    .line 550
    :goto_3
    return-void

    .line 542
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->callMatchCriteriaToEditNum()V
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$1500(Lcom/android/phone/callsettings/AutoRejectList;)V

    goto :goto_3

    .line 545
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$9;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectList;->deleteDialog()V

    goto :goto_3

    .line 540
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method
