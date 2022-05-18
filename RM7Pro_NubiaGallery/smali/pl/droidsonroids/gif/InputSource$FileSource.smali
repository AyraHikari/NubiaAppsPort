.class public final Lpl/droidsonroids/gif/InputSource$FileSource;
.super Lpl/droidsonroids/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileSource"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$FileSource;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 117
    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$FileSource;->mPath:Ljava/lang/String;

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

    .line 122
    iget-object v0, p0, Lpl/droidsonroids/gif/InputSource$FileSource;->mPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
