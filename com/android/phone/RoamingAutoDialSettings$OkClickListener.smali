.class Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;
.super Ljava/lang/Object;
.source "RoamingAutoDialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RoamingAutoDialSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/RoamingAutoDialSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/RoamingAutoDialSettings;Lcom/android/phone/RoamingAutoDialSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;-><init>(Lcom/android/phone/RoamingAutoDialSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/phone/RoamingAutoDialSettings$OkClickListener;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    invoke-virtual {v0}, Lcom/android/phone/RoamingAutoDialSettings;->finish()V

    .line 92
    return-void
.end method
