.class Lcom/android/phone/CdmaOptions$MyHandler;
.super Landroid/os/Handler;
.source "CdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;)V

    return-void
.end method

.method private handleGetPreferredOnlyTypeResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 179
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 180
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredOnlyTypeResponse ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 181
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_75

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_75

    .line 183
    :try_start_26
    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    #setter for: Lcom/android/phone/CdmaOptions;->homeSystemId:I
    invoke-static {v3, v2}, Lcom/android/phone/CdmaOptions;->access$102(Lcom/android/phone/CdmaOptions;I)I

    .line 184
    iget-object v3, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x1

    aget v2, v2, v4

    #setter for: Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I
    invoke-static {v3, v2}, Lcom/android/phone/CdmaOptions;->access$202(Lcom/android/phone/CdmaOptions;I)I

    .line 185
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredOnlyTypeResponse homeSystemId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->homeSystemId:I
    invoke-static {v4}, Lcom/android/phone/CdmaOptions;->access$100(Lcom/android/phone/CdmaOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PrlPreferredOnly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #getter for: Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I
    invoke-static {v4}, Lcom/android/phone/CdmaOptions;->access$200(Lcom/android/phone/CdmaOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    #calls: Lcom/android/phone/CdmaOptions;->checkPrlPreferredOnly()V
    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->access$300(Lcom/android/phone/CdmaOptions;)V
    :try_end_75
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_26 .. :try_end_75} :catch_76

    .line 191
    :cond_75
    :goto_75
    return-void

    .line 187
    :catch_76
    move-exception v1

    .line 188
    .local v1, ne:Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v2, p0, Lcom/android/phone/CdmaOptions$MyHandler;->this$0:Lcom/android/phone/CdmaOptions;

    const-string v3, "ArrayIndexOutOfBoundsException Caught"

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_75
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a

    .line 176
    :goto_5
    return-void

    .line 173
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions$MyHandler;->handleGetPreferredOnlyTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 171
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
