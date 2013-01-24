.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field contact_name:Landroid/widget/TextView;

.field summary:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field text_layout:Landroid/widget/LinearLayout;

.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
