.class Lcom/android/phone/callsettings/IntCallServicePreference$2;
.super Ljava/lang/Object;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallServicePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$2;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$2;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_25

    .line 142
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$2;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 143
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$2;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 144
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$2;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$2;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    #calls: Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->access$000(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    .line 147
    :cond_25
    return-void
.end method
