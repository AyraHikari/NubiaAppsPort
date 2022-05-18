.class public Lcn/nubia/gallery3d/util/InterruptableOutputStream;
.super Ljava/io/OutputStream;
.source "InterruptableOutputStream.java"


# static fields
.field private static final MAX_WRITE_BYTES:I = 0x1000


# instance fields
.field private volatile mIsInterrupted:Z

.field private mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mIsInterrupted:Z

    .line 33
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    iput-object p1, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mIsInterrupted:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mIsInterrupted:Z

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mIsInterrupted:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 46
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mIsInterrupted:Z

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    sub-int v1, p3, p2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 48
    iget-object v1, p0, Lcn/nubia/gallery3d/util/InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method
