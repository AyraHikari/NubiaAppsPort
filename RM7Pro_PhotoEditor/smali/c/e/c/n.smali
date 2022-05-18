.class public Lc/e/c/n;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lc/e/c/n;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    iget-object v0, p0, Lc/e/c/n;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    return v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lc/e/c/n;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, -0x32

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method
