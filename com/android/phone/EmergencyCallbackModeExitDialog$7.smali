.class Lcom/android/phone/EmergencyCallbackModeExitDialog$7;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    check-cast p2, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;->getService()Lcom/android/phone/EmergencyCallbackModeService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 326
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    monitor-enter v1

    .line 327
    :try_start_d
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 333
    return-void
.end method
