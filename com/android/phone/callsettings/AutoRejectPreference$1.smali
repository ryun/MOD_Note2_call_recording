.class Lcom/android/phone/callsettings/AutoRejectPreference$1;
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
    .line 211
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #calls: Lcom/android/phone/callsettings/AutoRejectPreference;->getValueFromIndex(I)I
    invoke-static {v2, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$300(Lcom/android/phone/callsettings/AutoRejectPreference;I)I

    move-result v2

    #calls: Lcom/android/phone/callsettings/AutoRejectPreference;->setAutoRejectMode(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$400(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;I)V

    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference$1;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    #getter for: Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I

    move-result v2

    aget-object v1, v1, v2

    #calls: Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->access$500(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    .line 217
    return-void
.end method
