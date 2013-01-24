.class Lcom/android/phone/callsettings/InCallSoundEQPreference$3;
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
    .line 148
    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 150
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 151
    return-void
.end method
