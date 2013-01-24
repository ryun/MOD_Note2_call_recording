.class Lcom/android/phone/LGTServiceProvider$1;
.super Ljava/lang/Object;
.source "LGTServiceProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTServiceProvider;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTServiceProvider;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTServiceProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/phone/LGTServiceProvider$1;->this$0:Lcom/android/phone/LGTServiceProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider$1;->this$0:Lcom/android/phone/LGTServiceProvider;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/LGTServiceProvider$1;->this$0:Lcom/android/phone/LGTServiceProvider;

    const-class v3, Lcom/android/phone/LGTServiceProviderSelect;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/LGTServiceProvider;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method
