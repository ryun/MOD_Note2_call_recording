.class Lcom/android/phone/callsettings/InCallSoundEQPreference$2;
.super Ljava/lang/Object;
.source "InCallSoundEQPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/InCallSoundEQPreference;->makeEQDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    const-string v1, "start hearingadjust"

    const/4 v2, 0x1

    #calls: Lcom/android/phone/callsettings/InCallSoundEQPreference;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$100(Lcom/android/phone/callsettings/InCallSoundEQPreference;Ljava/lang/String;Z)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
