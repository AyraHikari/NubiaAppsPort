.class public Lnet/fortuna/ical4j/data/FoldingWriter;
.super Ljava/io/FilterWriter;
.source "FoldingWriter.java"


# static fields
.field private static final FOLD_PATTERN:[C

.field public static final MAX_FOLD_LENGTH:I = 0x4b

.field public static final REDUCED_FOLD_LENGTH:I = 0x49


# instance fields
.field private final foldLength:I

.field private lineLength:I

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 82
    const/16 v0, 0x49

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/data/FoldingWriter;-><init>(Ljava/io/Writer;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "foldLength"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    const-class v0, Lnet/fortuna/ical4j/data/FoldingWriter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lorg/apache/commons/logging/Log;

    .line 75
    const/16 v0, 0x4b

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->foldLength:I

    .line 76
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lnet/fortuna/ical4j/data/FoldingWriter;->write([CII)V

    .line 95
    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lnet/fortuna/ical4j/data/FoldingWriter;->write([CII)V

    .line 137
    return-void
.end method

.method public final write([CII)V
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 102
    add-int v2, p2, p3

    add-int/lit8 v1, v2, -0x1

    .line 103
    .local v1, "maxIndex":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_4

    .line 106
    iget-object v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "char ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], line length ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 113
    :cond_0
    iget v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    iget v3, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->foldLength:I

    if-lt v2, v3, :cond_1

    .line 114
    sget-object v2, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    sget-object v3, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    array-length v3, v3

    invoke-super {p0, v2, v5, v3}, Ljava/io/FilterWriter;->write([CII)V

    .line 117
    const/4 v2, 0x1

    iput v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    .line 120
    :cond_1
    aget-char v2, p1, v0

    invoke-super {p0, v2}, Ljava/io/FilterWriter;->write(I)V

    .line 122
    aget-char v2, p1, v0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    aget-char v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 123
    :cond_2
    iput v5, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_3
    iget v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    goto :goto_1

    .line 129
    :cond_4
    return-void
.end method
