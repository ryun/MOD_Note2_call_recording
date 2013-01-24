.class Lcom/android/phone/callsettings/PhoneNumberLocator$2$1;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator$2;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$1;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$2$1;->this$1:Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator$2;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 264
    return-void
.end method
