.class public final Lpl/droidsonroids/gif/InputSource$DirectByteBufferSource;
.super Lpl/droidsonroids/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectByteBufferSource"
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 65
    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$DirectByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method open()Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl/droidsonroids/gif/GifIOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lpl/droidsonroids/gif/InputSource$DirectByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
