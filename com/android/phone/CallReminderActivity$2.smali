.class Lcom/android/phone/CallReminderActivity$2;
.super Ljava/lang/Object;
.source "CallReminderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallReminderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallReminderActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/CallReminderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/CallReminderActivity$2;->this$0:Lcom/android/phone/CallReminderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 204
    invoke-static {}, Lcom/android/phone/CallReminderActivity$WakeLock;->release()V

    .line 205
    return-void
.end method
