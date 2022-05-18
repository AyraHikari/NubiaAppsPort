.class Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderWrapper"
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private markPos:J

.field private pos:J

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    .line 4
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->markPos:J

    .line 5
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getPos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    return-wide v0
.end method

.method public mark()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 3
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->markPos:J

    return-void
.end method

.method read()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method read([B)J
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    int-to-long v0, p1

    .line 4
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    return-wide v0
.end method

.method public reset()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->markPos:J

    sub-long/2addr v0, v2

    .line 2
    invoke-static {}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->markPos:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (pos is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") which makes the buffersize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 4
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->markPos:J

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    return-void
.end method

.method seek(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->inputStream:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->pos:J

    return-wide v0
.end method
