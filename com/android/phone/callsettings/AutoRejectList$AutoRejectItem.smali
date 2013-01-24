.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
.super Ljava/lang/Object;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
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

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .parameter
    .parameter "num"
    .parameter "_id"
    .parameter "check"
    .parameter "match"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    .line 407
    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    .line 408
    iput p4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 409
    iput p5, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    .line 410
    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->defaultName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 411
    return-void
.end method
