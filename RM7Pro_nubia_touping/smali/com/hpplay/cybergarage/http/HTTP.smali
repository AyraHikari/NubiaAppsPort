.class public Lcom/hpplay/cybergarage/http/HTTP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOOTID_UPNP_ORG:Ljava/lang/String; = "BOOTID.UPNP.ORG"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final CHARSET:Ljava/lang/String; = "charset"

.field public static final CHUNKED:Ljava/lang/String; = "Chunked"

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CONNECTION:Ljava/lang/String; = "Connection"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_RANGE_BYTES:Ljava/lang/String; = "bytes"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final CR:B = 0xdt

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final DEFAULT_CHUNK_SIZE:I = 0x80000

.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_TIMEOUT:I = 0x1e

.field public static final EXT:Ljava/lang/String; = "EXT"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HEADER_LINE_DELIM:Ljava/lang/String; = " :"

.field public static final HOST:Ljava/lang/String; = "HOST"

.field public static final KEEP_ALIVE:Ljava/lang/String; = "Keep-Alive"

.field public static final LF:B = 0xat

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field public static final MAN:Ljava/lang/String; = "MAN"

.field public static final MAX_AGE:Ljava/lang/String; = "max-age"

.field public static final MX:Ljava/lang/String; = "MX"

.field public static final MYNAME:Ljava/lang/String; = "MYNAME"

.field public static final M_SEARCH:Ljava/lang/String; = "M-SEARCH"

.field public static final NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field public static final NT:Ljava/lang/String; = "NT"

.field public static final NTS:Ljava/lang/String; = "NTS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final REQEST_LINE_DELIM:Ljava/lang/String; = " "

.field public static final SEQ:Ljava/lang/String; = "SEQ"

.field public static final SERVER:Ljava/lang/String; = "Server"

.field public static final SID:Ljava/lang/String; = "SID"

.field public static final SOAP_ACTION:Ljava/lang/String; = "SOAPACTION"

.field public static final ST:Ljava/lang/String; = "ST"

.field public static final STATUS_LINE_DELIM:Ljava/lang/String; = " "

.field public static final SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final TAB:Ljava/lang/String; = "\t"

.field public static final TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final UNSUBSCRIBE:Ljava/lang/String; = "UNSUBSCRIBE"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final USN:Ljava/lang/String; = "USN"

.field public static final VERSION:Ljava/lang/String; = "1.1"

.field public static final VERSION_10:Ljava/lang/String; = "1.0"

.field public static final VERSION_11:Ljava/lang/String; = "1.1"

.field private static chunkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    const/high16 v0, 0x80000

    sput v0, Lcom/hpplay/cybergarage/http/HTTP;->chunkSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-static {p1}, Lcom/hpplay/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v0, ""

    goto :goto_0
.end method

.method public static final getChunkSize()I
    .locals 1

    .prologue
    .line 198
    sget v0, Lcom/hpplay/cybergarage/http/HTTP;->chunkSize:I

    return v0
.end method

.method public static final getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v0, ""

    goto :goto_0
.end method

.method public static final getPort(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/16 v0, 0x50

    .line 130
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    if-gtz v1, :cond_0

    .line 137
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static final getRequestHostURL(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public static final isAbsoluteURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final setChunkSize(I)V
    .locals 0

    .prologue
    .line 194
    sput p0, Lcom/hpplay/cybergarage/http/HTTP;->chunkSize:I

    .line 195
    return-void
.end method

.method public static final toRelativeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hpplay/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 147
    .line 148
    invoke-static {p0}, Lcom/hpplay/cybergarage/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    :cond_0
    :goto_0
    return-object p0

    .line 153
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 155
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 156
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    move-object v0, p0

    .line 161
    :goto_1
    :try_start_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_2
    move-object p0, v0

    .line 164
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p0, v0

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method
