.class Lcom/android/phone/callsettings/IntCallServicePreference$1;
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
    .line 129
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_20

    .line 132
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 133
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 134
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    :cond_20
    return-void
.end method
