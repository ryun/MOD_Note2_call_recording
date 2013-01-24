.class Lcom/android/phone/callsettings/RejectCallWithMsg$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    .line 294
    return-void
.end method
