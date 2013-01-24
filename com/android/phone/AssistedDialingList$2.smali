.class Lcom/android/phone/AssistedDialingList$2;
.super Ljava/lang/Object;
.source "AssistedDialingList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AssistedDialingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AssistedDialingList;


# direct methods
.method constructor <init>(Lcom/android/phone/AssistedDialingList;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 141
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 143
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 16
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v9, 0x1

    .line 145
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    iget-object v7, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/AssistedDialingList;->access$1000(Lcom/android/phone/AssistedDialingList;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    iput v7, v6, Lcom/android/phone/AssistedDialingList;->textlength:I

    .line 146
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->list_sort:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$1100(Lcom/android/phone/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v4, 0x0

    .local v4, id_index:I
    :goto_1e
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$1200(Lcom/android/phone/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_84

    .line 148
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$1200(Lcom/android/phone/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 149
    .local v0, c:Landroid/database/Cursor;
    add-int/lit8 v3, v2, 0x1

    .line 150
    .local v3, id:I
    if-nez v0, :cond_3d

    .line 147
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 151
    :cond_3d
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, country:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    iget v6, v6, Lcom/android/phone/AssistedDialingList;->textlength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_3a

    .line 154
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->searchtext:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$1000(Lcom/android/phone/AssistedDialingList;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    iget v8, v8, Lcom/android/phone/AssistedDialingList;->textlength:I

    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 155
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->list_sort:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$1100(Lcom/android/phone/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->list_sort_id:[I
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$100(Lcom/android/phone/AssistedDialingList;)[I

    move-result-object v6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #id_index:I
    .local v5, id_index:I
    aput v3, v6, v4

    .line 157
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #setter for: Lcom/android/phone/AssistedDialingList;->issorted:Z
    invoke-static {v6, v9}, Lcom/android/phone/AssistedDialingList;->access$002(Lcom/android/phone/AssistedDialingList;Z)Z

    move v4, v5

    .end local v5           #id_index:I
    .restart local v4       #id_index:I
    goto :goto_3a

    .line 161
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #id:I
    :cond_84
    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->listview:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$1300(Lcom/android/phone/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    const v9, 0x1090003

    iget-object v10, p0, Lcom/android/phone/AssistedDialingList$2;->this$0:Lcom/android/phone/AssistedDialingList;

    #getter for: Lcom/android/phone/AssistedDialingList;->list_sort:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/AssistedDialingList;->access$1100(Lcom/android/phone/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    return-void
.end method
