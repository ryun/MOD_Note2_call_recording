.class Lcom/android/phone/SipCallOptionHandler$2;
.super Ljava/lang/Object;
.source "SipCallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/SipCallOptionHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #calls: Lcom/android/phone/SipCallOptionHandler;->getPrimarySipPhone()V
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)V

    .line 429
    return-void
.end method
