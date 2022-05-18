.class public Lnubia/notepad/utils/WaveHeader;
.super Ljava/lang/Object;
.source "WaveHeader.java"


# instance fields
.field public AvgBytesPerSec:I

.field public BitsPerSample:S

.field public BlockAlign:S

.field public Channels:S

.field public DataHdrID:[C

.field public DataHdrLeth:I

.field public FmtHdrID:[C

.field public FmtHdrLeth:I

.field public FormatTag:S

.field public SamplesPerSec:I

.field public final fileID:[C

.field public fileLength:I

.field public wavTag:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnubia/notepad/utils/WaveHeader;->fileID:[C

    .line 12
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lnubia/notepad/utils/WaveHeader;->wavTag:[C

    .line 14
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lnubia/notepad/utils/WaveHeader;->FmtHdrID:[C

    .line 30
    new-array v0, v1, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lnubia/notepad/utils/WaveHeader;->DataHdrID:[C

    return-void

    .line 8
    nop

    :array_0
    .array-data 2
        0x52s
        0x49s
        0x46s
        0x46s
    .end array-data

    .line 12
    :array_1
    .array-data 2
        0x57s
        0x41s
        0x56s
        0x45s
    .end array-data

    .line 14
    :array_2
    .array-data 2
        0x66s
        0x6ds
        0x74s
        0x20s
    .end array-data

    .line 30
    :array_3
    .array-data 2
        0x64s
        0x61s
        0x74s
        0x61s
    .end array-data
.end method

.method private WriteChar(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 3
    .param p1, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "id"    # [C

    .prologue
    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 79
    aget-char v0, p2, v1

    .line 80
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "c":C
    :cond_0
    return-void
.end method

.method private WriteInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .param p1, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 68
    .local v0, "buf":[B
    const/4 v1, 0x3

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    const/4 v1, 0x2

    shl-int/lit8 v2, p2, 0x8

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    const/4 v1, 0x1

    shl-int/lit8 v2, p2, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 71
    const/4 v1, 0x0

    shl-int/lit8 v2, p2, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    return-void
.end method

.method private WriteShort(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .param p1, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 60
    .local v0, "mybyte":[B
    const/4 v1, 0x1

    shl-int/lit8 v2, p2, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 61
    const/4 v1, 0x0

    shl-int/lit8 v2, p2, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 63
    return-void
.end method


# virtual methods
.method public getHeader()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lnubia/notepad/utils/WaveHeader;->fileID:[C

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 38
    iget v2, p0, Lnubia/notepad/utils/WaveHeader;->fileLength:I

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 39
    iget-object v2, p0, Lnubia/notepad/utils/WaveHeader;->wavTag:[C

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 40
    iget-object v2, p0, Lnubia/notepad/utils/WaveHeader;->FmtHdrID:[C

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 41
    iget v2, p0, Lnubia/notepad/utils/WaveHeader;->FmtHdrLeth:I

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 42
    iget-short v2, p0, Lnubia/notepad/utils/WaveHeader;->FormatTag:S

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 43
    iget-short v2, p0, Lnubia/notepad/utils/WaveHeader;->Channels:S

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 44
    iget v2, p0, Lnubia/notepad/utils/WaveHeader;->SamplesPerSec:I

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 45
    iget v2, p0, Lnubia/notepad/utils/WaveHeader;->AvgBytesPerSec:I

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 46
    iget-short v2, p0, Lnubia/notepad/utils/WaveHeader;->BlockAlign:S

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 47
    iget-short v2, p0, Lnubia/notepad/utils/WaveHeader;->BitsPerSample:S

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    .line 48
    iget-object v2, p0, Lnubia/notepad/utils/WaveHeader;->DataHdrID:[C

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    .line 49
    iget v2, p0, Lnubia/notepad/utils/WaveHeader;->DataHdrLeth:I

    invoke-direct {p0, v0, v2}, Lnubia/notepad/utils/WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 52
    .local v1, "r":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 53
    return-object v1
.end method
