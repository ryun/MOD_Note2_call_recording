.class Lcom/android/phone/CallLockSettings$1;
.super Ljava/lang/Object;
.source "CallLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallLockSettings;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLockSettings;

.field final synthetic val$app:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/CallLockSettings;Lcom/android/phone/PhoneApp;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/CallLockSettings$1;->this$0:Lcom/android/phone/CallLockSettings;

    iput-object p2, p0, Lcom/android/phone/CallLockSettings$1;->val$app:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/phone/CallLockSettings$1;->val$app:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 153
    return-void
.end method
