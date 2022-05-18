.class public Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/BytesBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    return-void
.end method

.method synthetic constructor <init>(ILcn/nubia/gallery3d/data/BytesBufferPool$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public readFrom(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 44
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v1, v1

    :cond_0
    :goto_0
    const/16 v2, 0x1000

    .line 46
    iget v3, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 47
    iget-object v3, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v4, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_2

    .line 48
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    iget v3, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    add-int/2addr v3, v2

    iput v3, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    if-ne v3, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 53
    array-length v3, v1

    invoke-static {v1, p2, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iput-object v2, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 55
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 60
    throw p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 66
    iput v0, p0, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    return-void
.end method
