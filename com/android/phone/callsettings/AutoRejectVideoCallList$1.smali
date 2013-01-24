.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;
.super Landroid/os/Handler;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
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
    .line 157
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_14

    .line 161
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    .line 164
    :cond_14
    return-void
.end method
