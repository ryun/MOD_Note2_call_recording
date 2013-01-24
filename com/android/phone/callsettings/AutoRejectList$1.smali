.class Lcom/android/phone/callsettings/AutoRejectList$1;
.super Landroid/os/Handler;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
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
    .line 162
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$1;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_14

    .line 166
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$1;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$000(Lcom/android/phone/callsettings/AutoRejectList;)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->notifyDataSetChanged()V

    .line 167
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$1;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->stopContactQuery()V
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$100(Lcom/android/phone/callsettings/AutoRejectList;)V

    .line 169
    :cond_14
    return-void
.end method
