.class public final Lc/d/a/a/a/b/c/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/a/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private a:[Ljava/io/File;

.field private final b:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lc/d/a/a/a/b/c/a$e;->a:[Ljava/io/File;

    iput-object p6, p0, Lc/d/a/a/a/b/c/a$e;->b:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLc/d/a/a/a/b/c/a$a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lc/d/a/a/a/b/c/a$e;-><init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lc/d/a/a/a/b/c/a$e;->a:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lc/d/a/a/a/b/c/a$e;->b:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lc/d/a/a/a/b/c/d;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
