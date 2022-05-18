.class public Lcom/hpplay/common/perfume/CTCipher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "CTCipher"

    iput-object v0, p0, Lcom/hpplay/common/perfume/CTCipher;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/common/perfume/CTCipher;->mKey:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/hpplay/common/perfume/CTCipher;->mKey:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private encipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 25
    iget-object v0, p0, Lcom/hpplay/common/perfume/CTCipher;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    :cond_0
    const-string v0, "CTCipher"

    const-string v1, "encrypt invalid input"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    const-string v0, ""

    .line 66
    :cond_1
    :goto_0
    return-object v0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/hpplay/common/perfume/CTCipher;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 31
    array-length v0, v6

    new-array v7, v0, [I

    move v0, v1

    .line 32
    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_6

    move v2, v1

    .line 35
    :goto_2
    array-length v4, v6

    if-ge v2, v4, :cond_9

    .line 36
    aget-byte v4, v6, v2

    if-ltz v4, :cond_4

    .line 37
    aget-byte v4, v6, v2

    :goto_3
    move v5, v4

    move v4, v2

    move v2, v1

    .line 42
    :goto_4
    array-length v8, v6

    if-ge v2, v8, :cond_5

    .line 43
    aget-byte v8, v6, v2

    if-ltz v8, :cond_3

    aget-byte v8, v6, v2

    if-ge v8, v5, :cond_3

    .line 44
    aget-byte v5, v6, v2

    move v4, v2

    .line 42
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 35
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 48
    :cond_5
    aput-byte v3, v6, v4

    .line 49
    aput v0, v7, v4

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_6
    const-string v0, ""

    move v3, v1

    .line 53
    :goto_5
    array-length v2, v6

    if-ge v3, v2, :cond_1

    .line 54
    invoke-direct {p0, v7, v3}, Lcom/hpplay/common/perfume/CTCipher;->getArrayIndex([II)I

    move-result v4

    .line 55
    if-gez v4, :cond_7

    .line 57
    const-string v0, "CTCipher"

    const-string v1, "encrypt failed"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    const-string v0, ""

    goto :goto_0

    :cond_7
    move-object v2, v0

    move v0, v1

    .line 61
    :goto_6
    array-length v5, v7

    mul-int/2addr v5, v0

    add-int/2addr v5, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v5, v7

    mul-int/2addr v5, v0

    add-int/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 53
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v2

    goto :goto_5

    :cond_9
    move v2, v3

    move v4, v3

    goto :goto_3
.end method

.method private getArrayIndex([II)I
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 71
    aget v1, p1, v0

    if-ne p2, v1, :cond_0

    .line 75
    :goto_1
    return v0

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/hpplay/common/perfume/CTCipher;->encipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
