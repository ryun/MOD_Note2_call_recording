.class Lcom/android/phone/callsettings/AutoRejectList$4;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->initLayout(Landroid/view/View;)V
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
    .line 369
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$4;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$4;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectList;->addAutoRejectList()V

    .line 372
    return-void
.end method
