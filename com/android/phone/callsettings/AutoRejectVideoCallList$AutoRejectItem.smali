.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public checked:I

.field public contact_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public matched:I

.field public reject_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .parameter
    .parameter "num"
    .parameter "_id"
    .parameter "check"
    .parameter "match"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    .line 389
    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    .line 390
    iput p4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    .line 391
    iput p5, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    .line 392
    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 393
    return-void
.end method
