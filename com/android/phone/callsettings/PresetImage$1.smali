.class Lcom/android/phone/callsettings/PresetImage$1;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PresetImage;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$1;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$1;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 228
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$1;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-boolean v3, v3, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 229
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v2, intent:Landroid/content/Intent;
    :try_start_1e
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_21} :catch_22

    .line 239
    .end local v2           #intent:Landroid/content/Intent;
    :cond_21
    :goto_21
    return-void

    .line 234
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_22
    move-exception v1

    .line 235
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t play video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage$1;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage$1;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const v5, 0x7f0e02a5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_21
.end method
