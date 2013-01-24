.class Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeArray:[C

.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V
    .registers 3
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->beforeArray:[C

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 913
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 917
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, beforeString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->beforeArray:[C

    .line 920
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v4, 0x2b

    const/4 v3, 0x0

    .line 898
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 900
    .local v0, NumberFilterArray:[Landroid/text/InputFilter;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2f

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2f

    .line 901
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 903
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 909
    :cond_2e
    :goto_2e
    return-void

    .line 904
    :cond_2f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    if-ne v1, v2, :cond_2e

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_2e

    .line 905
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 907
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2e
.end method
