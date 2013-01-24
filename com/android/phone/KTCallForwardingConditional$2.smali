.class Lcom/android/phone/KTCallForwardingConditional$2;
.super Ljava/lang/Object;
.source "KTCallForwardingConditional.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallForwardingConditional;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingConditional;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallForwardingConditional;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional$2;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    return-void
.end method
