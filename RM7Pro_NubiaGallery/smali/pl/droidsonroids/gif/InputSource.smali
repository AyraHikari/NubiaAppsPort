.class public abstract Lpl/droidsonroids/gif/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/InputSource$AssetFileDescriptorSource;,
        Lpl/droidsonroids/gif/InputSource$ResourcesSource;,
        Lpl/droidsonroids/gif/InputSource$InputStreamSource;,
        Lpl/droidsonroids/gif/InputSource$FileDescriptorSource;,
        Lpl/droidsonroids/gif/InputSource$AssetSource;,
        Lpl/droidsonroids/gif/InputSource$UriSource;,
        Lpl/droidsonroids/gif/InputSource$FileSource;,
        Lpl/droidsonroids/gif/InputSource$ByteArraySource;,
        Lpl/droidsonroids/gif/InputSource$DirectByteBufferSource;
    }
.end annotation


# instance fields
.field private mIsOpaque:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final build(Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)Lpl/droidsonroids/gif/GifDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0}, Lpl/droidsonroids/gif/InputSource;->open()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-object v0
.end method

.method final isOpaque()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lpl/droidsonroids/gif/InputSource;->mIsOpaque:Z

    return v0
.end method

.method abstract open()Lpl/droidsonroids/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final setOpaque(Z)Lpl/droidsonroids/gif/InputSource;
    .locals 0

    .line 48
    iput-boolean p1, p0, Lpl/droidsonroids/gif/InputSource;->mIsOpaque:Z

    return-object p0
.end method
