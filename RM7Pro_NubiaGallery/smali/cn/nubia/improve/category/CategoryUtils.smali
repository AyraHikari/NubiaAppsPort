.class public Lcn/nubia/improve/category/CategoryUtils;
.super Ljava/lang/Object;
.source "CategoryUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryUtils"

.field private static final THINGS_CLASSIFY_GROUP_LABEL:Ljava/lang/String; = "/system/etc/pictureclassifier/LabelGroups"

.field private static final THINGS_CLASSIFY_LABEL:Ljava/lang/String; = "/system/etc/pictureclassifier/PictureLabels"

.field private static final THINGS_CLASSIFY_MODEL:Ljava/lang/String; = "/system/etc/pictureclassifier/PictureClassifier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModel(Landroid/content/res/Resources;)[B
    .locals 6

    const/4 p0, 0x0

    .line 26
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/system/etc/pictureclassifier/PictureClassifier"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/high16 v2, 0xd00000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v2, 0x100000

    :try_start_2
    new-array v2, v2, [B

    .line 30
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_7

    :catch_4
    move-exception v2

    move-object v1, p0

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v1, p0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    move-object v0, v1

    goto :goto_7

    :catch_6
    move-exception v2

    move-object v0, p0

    move-object v1, v0

    :goto_2
    :try_start_5
    const-string v3, "CategoryUtils"

    const-string v4, "categoryUtils getModel outofmemory ! "

    .line 37
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_1

    .line 42
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    if-eqz v1, :cond_3

    .line 49
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_8
    move-exception v2

    move-object v0, p0

    move-object v1, v0

    .line 35
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_2

    .line 42
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_5

    :catch_9
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    .line 49
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_3
    :goto_6
    return-object p0

    :catchall_2
    move-exception p0

    :goto_7
    if-eqz v0, :cond_4

    .line 42
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_8

    :catch_a
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_8
    if-eqz v1, :cond_5

    .line 49
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_9

    :catch_b
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_5
    :goto_9
    throw p0
.end method

.method public static getThingsGroupLabel()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 80
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/system/etc/pictureclassifier/LabelGroups"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 89
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "CategoryUtils"

    const-string v3, ""

    .line 91
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method public static getThingsLabel()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/system/etc/pictureclassifier/PictureLabels"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "CategoryUtils"

    const-string v3, ""

    .line 72
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method
