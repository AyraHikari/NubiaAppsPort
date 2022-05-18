.class public final Lpl/droidsonroids/gif/InputSource$ByteArraySource;
.super Lpl/droidsonroids/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArraySource"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 87
    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$ByteArraySource;->bytes:[B

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

    .line 92
    iget-object v0, p0, Lpl/droidsonroids/gif/InputSource$ByteArraySource;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->openByteArray([BZ)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
