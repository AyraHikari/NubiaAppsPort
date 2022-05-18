.class public final Lpl/droidsonroids/gif/InputSource$InputStreamSource;
.super Lpl/droidsonroids/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamSource"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 207
    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$InputStreamSource;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method open()Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lpl/droidsonroids/gif/InputSource$InputStreamSource;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->openMarkableInputStream(Ljava/io/InputStream;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
