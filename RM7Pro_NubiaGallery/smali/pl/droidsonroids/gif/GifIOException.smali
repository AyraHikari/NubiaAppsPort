.class public Lpl/droidsonroids/gif/GifIOException;
.super Ljava/io/IOException;
.source "GifIOException.java"


# static fields
.field private static final serialVersionUID:J = 0xbdbbd5fa1b9L


# instance fields
.field public final reason:Lpl/droidsonroids/gif/GifError;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 27
    invoke-static {p1}, Lpl/droidsonroids/gif/GifError;->fromCode(I)Lpl/droidsonroids/gif/GifError;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifIOException;-><init>(Lpl/droidsonroids/gif/GifError;)V

    return-void
.end method

.method private constructor <init>(Lpl/droidsonroids/gif/GifError;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifError;->getFormattedDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lpl/droidsonroids/gif/GifIOException;->reason:Lpl/droidsonroids/gif/GifError;

    return-void
.end method

.method static fromCode(I)Lpl/droidsonroids/gif/GifIOException;
    .locals 1

    .line 31
    sget-object v0, Lpl/droidsonroids/gif/GifError;->NO_ERROR:Lpl/droidsonroids/gif/GifError;

    iget v0, v0, Lpl/droidsonroids/gif/GifError;->errorCode:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lpl/droidsonroids/gif/GifIOException;

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/GifIOException;-><init>(I)V

    return-object v0
.end method
