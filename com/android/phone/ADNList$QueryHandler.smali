.class Lcom/android/phone/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    .line 243
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onDeleteComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 279
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onInsertComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 267
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: cursor.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/ADNList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 251
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onQueryComplete: Fragment finished."

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;Z)V

    .line 261
    :goto_2c
    return-void

    .line 255
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    iput-object p3, v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 256
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->setAdapter()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;)V

    .line 257
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;Z)V

    .line 260
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/ADNList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    goto :goto_2c
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const-string v1, "onUpdateComplete: requery"

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->log(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    #calls: Lcom/android/phone/ADNList;->reQuery()V
    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 273
    return-void
.end method
