.class Lcom/android/phone/EmergencyCallList$4;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
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
    .line 208
    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$4;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 210
    packed-switch p2, :pswitch_data_10

    .line 215
    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/EmergencyCallList;->access$200(Ljava/lang/String;)V

    .line 218
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 212
    :pswitch_c
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_a

    .line 210
    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch
.end method
