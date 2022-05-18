.class public Lcn/nubia/upgrade/deviceid/IdCodecer;
.super Ljava/lang/Object;
.source "IdCodecer.java"


# static fields
.field static final FAKE_ID:Ljava/lang/String; = "00000000"

.field private static final TAG:Ljava/lang/String; = "IdCodecer"

.field private static final mDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/upgrade/deviceid/IdCodecer;->mDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allZeros(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 55
    const/16 v2, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 61
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 54
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static serialize(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 67
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 69
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    .end local v0    # "p":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 73
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static sha256(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p0, "scope"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 17
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    .line 19
    :cond_0
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 20
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-lez v3, :cond_2

    .line 24
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    :cond_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/upgrade/deviceid/IdCodecer;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 31
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_3
    :goto_0
    return-object v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bs"    # [B

    .prologue
    .line 40
    if-eqz p0, :cond_1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 43
    sget-object v2, Lcn/nubia/upgrade/deviceid/IdCodecer;->mDigits:[C

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    sget-object v2, Lcn/nubia/upgrade/deviceid/IdCodecer;->mDigits:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method static unserialize(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 5
    .param p0, "joined"    # Ljava/lang/String;
    .param p2, "checkAllZeros"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 82
    const-string v3, "\\|"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "parts":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 84
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 86
    .local v0, "p":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcn/nubia/upgrade/deviceid/IdCodecer;->allZeros(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_2
    return-void
.end method
