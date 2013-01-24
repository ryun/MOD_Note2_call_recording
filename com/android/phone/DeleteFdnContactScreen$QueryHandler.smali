.class Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    .line 247
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 248
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const-string v3, "onDeleteComplete"

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    .line 269
    .local v1, bSuccess:Z
    const-string v0, "0"

    .line 270
    .local v0, bSegment:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const/4 v3, 0x0

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/DeleteFdnContactScreen;->access$100(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    .line 271
    if-gez p3, :cond_19

    .line 272
    const/4 v1, 0x0

    .line 273
    const/16 v2, -0x3eb

    if-ne p3, v2, :cond_19

    .line 274
    const-string v0, "-1003"

    .line 277
    :cond_19
    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->handleResult(ZLjava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$300(Lcom/android/phone/DeleteFdnContactScreen;ZLjava/lang/String;)V

    .line 278
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 259
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const-string v1, "onQueryComplete(), call the deleteContact()"

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->access$100(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->deleteContact()V
    invoke-static {v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$200(Lcom/android/phone/DeleteFdnContactScreen;)V

    .line 255
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 263
    return-void
.end method
