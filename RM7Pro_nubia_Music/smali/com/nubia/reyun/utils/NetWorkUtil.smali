.class public Lcom/nubia/reyun/utils/NetWorkUtil;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# static fields
.field private static final AUTH_INFO_LENGTH:I = 0x10

.field private static final AUTH_SUFFIX_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, 0x0

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 45
    if-le v0, v1, :cond_1

    .line 46
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 52
    :cond_0
    :goto_0
    return-object p0

    .line 47
    :cond_1
    if-ge v0, v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toAes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/nubia/reyun/utils/aes/Aes;

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->PKCS5Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    invoke-direct {v0, v1}, Lcom/nubia/reyun/utils/aes/Aes;-><init>(Lcom/nubia/reyun/utils/aes/PaddingMode;)V

    .line 24
    invoke-static {p0}, Lcom/nubia/reyun/utils/NetWorkUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {p1}, Lcom/nubia/reyun/utils/NetWorkUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2, p2}, Lcom/nubia/reyun/utils/aes/Aes;->cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDeAes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/nubia/reyun/utils/aes/Aes;

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->PKCS5Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    invoke-direct {v0, v1}, Lcom/nubia/reyun/utils/aes/Aes;-><init>(Lcom/nubia/reyun/utils/aes/PaddingMode;)V

    .line 38
    invoke-static {p0}, Lcom/nubia/reyun/utils/NetWorkUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {p1}, Lcom/nubia/reyun/utils/NetWorkUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2, p2}, Lcom/nubia/reyun/utils/aes/Aes;->cbc_decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
