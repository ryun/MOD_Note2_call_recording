.class Lcom/android/phone/AutomaticConnectionsSettings$1;
.super Ljava/lang/Object;
.source "AutomaticConnectionsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutomaticConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/AutomaticConnectionsSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/phone/AutomaticConnectionsSettings$1;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings$1;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    #getter for: Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/AutomaticConnectionsSettings;->access$000(Lcom/android/phone/AutomaticConnectionsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    invoke-static {}, Lcom/android/phone/AutomaticConnectionsSettings;->access$100()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 168
    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings$1;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/AutomaticConnectionsSettings;->access$200(Lcom/android/phone/AutomaticConnectionsSettings;I)V

    .line 171
    :goto_16
    return-void

    .line 170
    :cond_17
    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings$1;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    #calls: Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/AutomaticConnectionsSettings;->access$200(Lcom/android/phone/AutomaticConnectionsSettings;I)V

    goto :goto_16
.end method
