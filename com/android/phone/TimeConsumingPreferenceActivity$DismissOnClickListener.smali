.class Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;
.super Ljava/lang/Object;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TimeConsumingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;->this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 49
    const-string v0, "TimeConsumingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss, dialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 50
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;->this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsShowDialog:Z

    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    return-void
.end method
