.class Lcom/android/phone/CallCard$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallCard;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 3883
    iput-object p1, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    .line 3884
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 3885
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3888
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete: cursor.count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    const/4 v1, 0x0

    .line 3892
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz p3, :cond_a1

    .line 3893
    move-object v1, p3

    .line 3902
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3903
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3905
    .local v0, count:I
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$2102(I)I

    .line 3906
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/CallCard;->access$2202([Ljava/lang/String;)[Ljava/lang/String;

    .line 3907
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/CallCard;->access$2302([Ljava/lang/String;)[Ljava/lang/String;

    .line 3909
    const/4 v2, 0x0

    .local v2, i:I
    :goto_37
    if-ge v2, v0, :cond_af

    .line 3910
    invoke-static {}, Lcom/android/phone/CallCard;->access$2200()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "number"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3911
    invoke-static {}, Lcom/android/phone/CallCard;->access$2300()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3913
    const-string v3, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSDNNumber[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/CallCard;->access$2200()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mSDNName[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/CallCard;->access$2300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9e
    .catchall {:try_start_22 .. :try_end_9e} :catchall_118

    .line 3909
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 3895
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_a1
    const-string v3, "CallCard"

    const-string v4, "cursor is null"

    invoke-static {v3, v4, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3896
    invoke-static {v7}, Lcom/android/phone/CallCard;->access$2002(Z)Z

    .line 3897
    invoke-static {v6}, Lcom/android/phone/CallCard;->access$2102(I)I

    .line 3935
    :cond_ae
    :goto_ae
    return-void

    .line 3918
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_af
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3919
    invoke-static {v7}, Lcom/android/phone/CallCard;->access$2002(Z)Z

    .line 3922
    invoke-static {}, Lcom/android/phone/CallCard;->access$2100()I

    move-result v3

    if-lez v3, :cond_ae

    .line 3923
    invoke-static {}, Lcom/android/phone/CallCard;->access$2200()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_ae

    invoke-static {}, Lcom/android/phone/CallCard;->access$2200()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    if-eqz v3, :cond_ae

    invoke-static {}, Lcom/android/phone/CallCard;->access$2300()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    if-eqz v3, :cond_ae

    .line 3926
    const/4 v2, 0x0

    :goto_d3
    invoke-static {}, Lcom/android/phone/CallCard;->access$2200()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_ae

    .line 3927
    invoke-static {}, Lcom/android/phone/CallCard;->access$2200()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_120

    invoke-static {}, Lcom/android/phone/CallCard;->access$2400()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallCard;->access$2200()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 3928
    iget-object v3, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallCard;->access$2300()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3929
    iget-object v3, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1800(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallCard;->access$2400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3930
    iget-object v3, p0, Lcom/android/phone/CallCard$QueryHandler;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$1800(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ae

    .line 3918
    .end local v0           #count:I
    .end local v2           #i:I
    :catchall_118
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3919
    invoke-static {v7}, Lcom/android/phone/CallCard;->access$2002(Z)Z

    throw v3

    .line 3926
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_120
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3
.end method
