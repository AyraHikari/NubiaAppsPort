.class Lorg/apache/commons/logging/LogFactory$5;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "val$url"    # Ljava/net/URL;

    .prologue
    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1424
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1425
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 1426
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1427
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1428
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1433
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to read URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->access$000(Ljava/lang/String;)V

    .line 1437
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
