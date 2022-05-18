.class public Lcn/nubia/camera/ao/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;[I)[B
    .locals 12

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 18
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    const-string v2, "CubeUtil"

    const-string v3, "parse cube start"

    .line 26
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/16 v4, 0xc

    .line 29
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LUT_3D_SIZE "

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse cube sizeEx =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-lez v3, :cond_6

    mul-int v1, v3, v3

    mul-int/2addr v1, v3

    mul-int/lit8 v5, v1, 0x3

    .line 40
    new-array v5, v5, [B

    move v6, v0

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 43
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_2

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2

    const-string v8, " "

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 52
    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    if-ge v6, v1, :cond_4

    mul-int/lit8 v8, v6, 0x3

    .line 53
    aget-object v9, v7, v0

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    add-int/lit8 v9, v8, 0x1

    .line 54
    aget-object v11, v7, v4

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    const/4 v9, 0x2

    add-int/2addr v8, v9

    .line 55
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 58
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse cube strArray.length =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move-object v1, v5

    goto :goto_2

    :cond_6
    move v6, v0

    .line 64
    :goto_2
    aput v3, p2, v0

    mul-int v5, v3, v3

    .line 65
    aput v5, p2, v4

    .line 66
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 67
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parse cube count =  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_8

    mul-int/2addr v5, v3

    if-eq v6, v5, :cond_7

    goto :goto_3

    :cond_7
    return-object v1

    :cond_8
    :goto_3
    const-string p0, "parse cube fail"

    .line 71
    invoke-static {v2, p0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [B

    return-object p0
.end method
