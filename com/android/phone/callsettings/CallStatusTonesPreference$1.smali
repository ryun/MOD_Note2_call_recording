.class Lcom/android/phone/callsettings/CallStatusTonesPreference$1;
.super Ljava/lang/Object;
.source "CallStatusTonesPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallStatusTonesPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallStatusTonesPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$1;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 5
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$1;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    #getter for: Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v0}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->access$000(Lcom/android/phone/callsettings/CallStatusTonesPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 85
    return-void
.end method
