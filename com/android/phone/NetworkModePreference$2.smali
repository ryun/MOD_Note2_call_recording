.class Lcom/android/phone/NetworkModePreference$2;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 241
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference;->mFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    return-void
.end method
