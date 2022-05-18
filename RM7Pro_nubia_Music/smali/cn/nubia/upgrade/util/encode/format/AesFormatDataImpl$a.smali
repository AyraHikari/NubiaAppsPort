.class Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;
.super Ljava/lang/Object;
.source "AesFormatDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;

    invoke-direct {v0}, Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a:Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 177
    if-le v0, v1, :cond_1

    .line 178
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_0
    :goto_0
    return-object p0

    .line 179
    :cond_1
    if-ge v0, v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rsub-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {p1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {p2}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    :try_start_0
    sget-object v3, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a:Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;

    invoke-virtual {v3, v1, v2, p0}, Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;->cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    :try_start_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 141
    :catch_1
    move-exception v1

    .line 142
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 128
    :catch_2
    move-exception v1

    .line 129
    :try_start_2
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 131
    :catch_3
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 134
    :catch_4
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 137
    :catch_5
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-static {p1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {p2}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    :try_start_0
    sget-object v3, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl$a;->a:Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;

    invoke-virtual {v3, v1, v2, p0}, Lcn/nubia/upgrade/util/encode/crypto/AesCbc128;->cbc_decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    :try_start_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 156
    :catch_2
    move-exception v1

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 159
    :catch_3
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 162
    :catch_4
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 165
    :catch_5
    move-exception v1

    .line 166
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
