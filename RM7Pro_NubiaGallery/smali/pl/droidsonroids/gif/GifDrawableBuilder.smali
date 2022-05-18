.class public Lpl/droidsonroids/gif/GifDrawableBuilder;
.super Ljava/lang/Object;
.source "GifDrawableBuilder.java"


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mInputSource:Lpl/droidsonroids/gif/InputSource;

.field private mIsRenderingTriggeredOnDraw:Z

.field private mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mIsRenderingTriggeredOnDraw:Z

    return-void
.end method


# virtual methods
.method public build()Lpl/droidsonroids/gif/GifDrawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    const-string v1, "Source is not set"

    .line 41
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v3, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mIsRenderingTriggeredOnDraw:Z

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/InputSource;->build(Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 154
    new-instance v0, Lpl/droidsonroids/gif/InputSource$UriSource;

    invoke-direct {v0, p1, p2}, Lpl/droidsonroids/gif/InputSource$UriSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Landroid/content/res/AssetFileDescriptor;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 119
    new-instance v0, Lpl/droidsonroids/gif/InputSource$AssetFileDescriptorSource;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/InputSource$AssetFileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Landroid/content/res/AssetManager;Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 142
    new-instance v0, Lpl/droidsonroids/gif/InputSource$AssetSource;

    invoke-direct {v0, p1, p2}, Lpl/droidsonroids/gif/InputSource$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Landroid/content/res/Resources;I)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 210
    new-instance v0, Lpl/droidsonroids/gif/InputSource$ResourcesSource;

    invoke-direct {v0, p1, p2}, Lpl/droidsonroids/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Ljava/io/File;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 165
    new-instance v0, Lpl/droidsonroids/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/InputSource$FileSource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Ljava/io/FileDescriptor;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 130
    new-instance v0, Lpl/droidsonroids/gif/InputSource$FileDescriptorSource;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/InputSource$FileDescriptorSource;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Ljava/io/InputStream;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 108
    new-instance v0, Lpl/droidsonroids/gif/InputSource$InputStreamSource;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/InputSource$InputStreamSource;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 176
    new-instance v0, Lpl/droidsonroids/gif/InputSource$FileSource;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/InputSource$FileSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from(Ljava/nio/ByteBuffer;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 198
    new-instance v0, Lpl/droidsonroids/gif/InputSource$DirectByteBufferSource;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/InputSource$DirectByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public from([B)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 187
    new-instance v0, Lpl/droidsonroids/gif/InputSource$ByteArraySource;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/InputSource$ByteArraySource;-><init>([B)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mInputSource:Lpl/droidsonroids/gif/InputSource;

    return-object p0
.end method

.method public setRenderingTriggeredOnDraw(Z)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 0

    .line 97
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mIsRenderingTriggeredOnDraw:Z

    return-object p0
.end method

.method public taskExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 0

    .line 79
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method public threadPoolSize(I)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 1

    .line 67
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method public with(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 0

    .line 54
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-object p0
.end method
