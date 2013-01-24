.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyRightRun(Landroid/view/View;)V
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
    .line 434
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 437
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    .line 438
    return-void
.end method
