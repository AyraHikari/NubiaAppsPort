.class public abstract Lcom/nubia/nucms/network/http/parser/DataParser;
.super Ljava/lang/Object;
.source "DataParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected buffSize:I

.field protected charSet:Ljava/lang/String;

.field protected data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected readLength:J

.field protected request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/nubia/nucms/network/http/parser/DataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/http/parser/DataParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->charSet:Ljava/lang/String;

    .line 20
    const/16 v0, 0x1000

    iput v0, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->buffSize:I

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getReadedLength()J
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    iget-wide v0, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->readLength:J

    return-wide v0
.end method

.method protected final notifyReading(JJ)V
    .locals 7
    .param p1, "total"    # J
    .param p3, "len"    # J

    .prologue
    .line 77
    .local p0, "this":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    iget-object v1, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v0

    .line 78
    .local v0, "listener":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallLoading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V

    .line 81
    :cond_0
    return-void
.end method

.method protected abstract parseNetStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readFromNetStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "len"    # J
    .param p4, "charSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nubia/nucms/network/http/parser/DataParser;->parseNetStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->data:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->data:Ljava/lang/Object;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public final setRequest(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 68
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getCharSet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getCharSet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->charSet:Ljava/lang/String;

    .line 71
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    .local p0, "this":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataParser{buffSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->buffSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nubia/nucms/network/http/parser/DataParser;->readLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
