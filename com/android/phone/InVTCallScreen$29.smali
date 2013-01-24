.class Lcom/android/phone/InVTCallScreen$29;
.super Landroid/os/CountDownTimer;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->button_initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;JJLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 10558
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-object p6, p0, Lcom/android/phone/InVTCallScreen$29;->val$name:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 1

    .prologue
    .line 10573
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 10560
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10562
    .local v0, textViewName:Ljava/lang/String;
    const-wide/32 v1, 0x48ff8

    cmp-long v1, p1, v1

    if-lez v1, :cond_16

    .line 10569
    :goto_15
    return-void

    .line 10565
    :cond_16
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 10566
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 10568
    :cond_2a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$29;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$29;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method
