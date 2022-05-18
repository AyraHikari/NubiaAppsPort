.class Lokhttp3/internal/framed/NameValueBlockReader$1;
.super Lokio/ForwardingSource;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/NameValueBlockReader;Lokio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lokhttp3/internal/framed/NameValueBlockReader;
    .param p2, "x0"    # Lokio/Source;

    .prologue
    .line 53
    iput-object p1, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 55
    iget-object v4, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-static {v4}, Lokhttp3/internal/framed/NameValueBlockReader;->access$000(Lokhttp3/internal/framed/NameValueBlockReader;)I

    move-result v4

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 59
    :goto_0
    return-wide v0

    .line 56
    :cond_0
    iget-object v4, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-static {v4}, Lokhttp3/internal/framed/NameValueBlockReader;->access$000(Lokhttp3/internal/framed/NameValueBlockReader;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-super {p0, p1, v4, v5}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 57
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    .line 58
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    iget-object v3, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-static {v3}, Lokhttp3/internal/framed/NameValueBlockReader;->access$000(Lokhttp3/internal/framed/NameValueBlockReader;)I

    move-result v3

    int-to-long v4, v3

    sub-long/2addr v4, v0

    long-to-int v3, v4

    invoke-static {v2, v3}, Lokhttp3/internal/framed/NameValueBlockReader;->access$002(Lokhttp3/internal/framed/NameValueBlockReader;I)I

    goto :goto_0
.end method
