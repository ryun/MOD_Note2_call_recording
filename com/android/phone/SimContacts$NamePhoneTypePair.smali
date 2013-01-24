.class Lcom/android/phone/SimContacts$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field nameLen:I

.field final phoneType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .parameter "nameWithPhoneType"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v3, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    .line 83
    if-eqz p1, :cond_f

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    .line 86
    :cond_f
    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_58

    if-eqz p1, :cond_58

    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_58

    .line 87
    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 88
    .local v0, c:C
    const/16 v1, 0x57

    if-ne v0, v1, :cond_41

    .line 89
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 97
    :goto_36
    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 102
    .end local v0           #c:C
    :goto_40
    return-void

    .line 90
    .restart local v0       #c:C
    :cond_41
    const/16 v1, 0x4d

    if-eq v0, v1, :cond_49

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_4d

    .line 91
    :cond_49
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_36

    .line 92
    :cond_4d
    const/16 v1, 0x48

    if-ne v0, v1, :cond_55

    .line 93
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_36

    .line 95
    :cond_55
    iput v4, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_36

    .line 99
    .end local v0           #c:C
    :cond_58
    iput v4, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 100
    iput-object p1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_40
.end method
