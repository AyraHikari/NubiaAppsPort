.class public Lcom/coremedia/iso/PropertyBoxParserImpl;
.super Lcom/coremedia/iso/AbstractBoxParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
    }
.end annotation


# instance fields
.field mapping:Ljava/util/Properties;

.field p:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/coremedia/iso/AbstractBoxParser;-><init>()V

    const-string v0, "(.*)\\((.*?)\\)"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->p:Ljava/util/regex/Pattern;

    .line 22
    iput-object p1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/coremedia/iso/AbstractBoxParser;-><init>()V

    const-string v0, "(.*)\\((.*?)\\)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->p:Ljava/util/regex/Pattern;

    .line 3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/isoparser-default.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "isoparser-custom.properties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 9
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw p1

    .line 12
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 13
    iget-object v4, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    :catch_1
    move-exception p1

    .line 16
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :goto_3
    throw p1
.end method


# virtual methods
.method public createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;
    .locals 9

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;-><init>(Lcom/coremedia/iso/PropertyBoxParserImpl;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->invoke()Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->getParam()[Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->getClazzName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 4
    :try_start_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 6
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Class;

    .line 7
    array-length v5, v2

    new-array v5, v5, [Ljava/lang/Object;

    move v6, v3

    .line 8
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_4

    const-string v7, "userType"

    .line 9
    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    aput-object p2, v5, v6

    .line 11
    const-class v7, [B

    aput-object v7, v4, v6

    goto :goto_1

    :cond_1
    const-string v7, "type"

    .line 12
    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    aput-object p1, v5, v6

    .line 14
    aput-object v0, v4, v6

    goto :goto_1

    :cond_2
    const-string v7, "parent"

    .line 15
    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 16
    aput-object p3, v5, v6

    .line 17
    aput-object v0, v4, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/InternalError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No such param: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, v2, v6

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 19
    :cond_4
    :try_start_1
    array-length p1, v2

    if-lez p1, :cond_5

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-array p1, v3, [Ljava/lang/Class;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 22
    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coremedia/iso/boxes/Box;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    return-object p1

    :catch_0
    move-exception p1

    .line 23
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getClassForFourCc(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;-><init>(Lcom/coremedia/iso/PropertyBoxParserImpl;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->invoke()Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->access$000(Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
