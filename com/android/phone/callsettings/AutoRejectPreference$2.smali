.class Lcom/android/phone/callsettings/AutoRejectPreference$2;
.super Ljava/lang/Object;
.source "AutoRejectPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectPreference;->makeAutoRejectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$2;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 208
    return-void
.end method
