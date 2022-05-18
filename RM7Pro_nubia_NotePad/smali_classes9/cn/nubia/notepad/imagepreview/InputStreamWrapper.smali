.class public Lcn/nubia/notepad/imagepreview/InputStreamWrapper;
.super Ljava/io/BufferedInputStream;
.source "InputStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;
    }
.end annotation


# instance fields
.field protected mBytesLoaded:J

.field protected mContentLen:J

.field protected mProgressListener:Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IJ)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .param p3, "contentLen"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 16
    iput-wide p3, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mContentLen:J

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mBytesLoaded:J

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mBytesLoaded:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mBytesLoaded:J

    .line 25
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mProgressListener:Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mProgressListener:Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;

    iget-wide v2, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mBytesLoaded:J

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mContentLen:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget-wide v2, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mBytesLoaded:J

    iget-wide v4, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mContentLen:J

    invoke-interface/range {v0 .. v5}, Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;->onProgress(FJJ)V

    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressListener(Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/InputStreamWrapper;->mProgressListener:Lcn/nubia/notepad/imagepreview/InputStreamWrapper$InputStreamProgressListener;

    .line 36
    return-void
.end method
