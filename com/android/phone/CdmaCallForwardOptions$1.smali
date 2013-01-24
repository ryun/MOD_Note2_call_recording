.class Lcom/android/phone/CdmaCallForwardOptions$1;
.super Ljava/lang/Object;
.source "CdmaCallForwardOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaCallForwardOptions;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallForwardOptions;

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    iput-object p2, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->val$dlg:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    return-void
.end method
