.class public Lcn/nubia/video/player/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/s/b$c;,
        Lcn/nubia/video/player/s/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/s/b;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcn/nubia/video/player/s/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/s/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/s/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/player/s/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/s/b;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/s/b;->a:Landroid/content/Context;

    const-string v2, "bookmark"

    const/16 v3, 0x64

    const/16 v4, 0x2800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lb/a/b/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;III)Lb/a/b/c/a/a;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lb/a/b/c/a/a;->n(J)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-static {v2}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/16 p1, 0x7530

    if-lt v3, p1, :cond_3

    const v1, 0x1d4c0

    if-lt v2, v1, :cond_3

    sub-int/2addr v2, p1

    if-le v3, v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v1, "Bookmarker"

    const-string v2, "getBookmark failed"

    .line 9
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public d(Landroid/net/Uri;II)V
    .locals 2

    .line 1
    new-instance v0, Lcn/nubia/video/player/s/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/player/s/b$b;-><init>(Lcn/nubia/video/player/s/b;Lcn/nubia/video/player/s/b$a;)V

    .line 2
    iput-object p1, v0, Lcn/nubia/video/player/s/b$b;->a:Landroid/net/Uri;

    .line 3
    iput p2, v0, Lcn/nubia/video/player/s/b$b;->b:I

    .line 4
    iput p3, v0, Lcn/nubia/video/player/s/b$b;->c:I

    .line 5
    new-instance p1, Lcn/nubia/video/player/s/b$c;

    invoke-direct {p1, p0, v1}, Lcn/nubia/video/player/s/b$c;-><init>(Lcn/nubia/video/player/s/b;Lcn/nubia/video/player/s/b$a;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcn/nubia/video/player/s/b$b;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
