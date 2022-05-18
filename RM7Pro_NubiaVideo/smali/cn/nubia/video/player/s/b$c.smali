.class Lcn/nubia/video/player/s/b$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcn/nubia/video/player/s/b$b;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/s/b;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/s/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/s/b$c;->a:Lcn/nubia/video/player/s/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/s/b;Lcn/nubia/video/player/s/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/s/b$c;-><init>(Lcn/nubia/video/player/s/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcn/nubia/video/player/s/b$b;)Ljava/lang/Void;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/b$c;->a:Lcn/nubia/video/player/s/b;

    invoke-static {v0}, Lcn/nubia/video/player/s/b;->a(Lcn/nubia/video/player/s/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/s/b$c;->a:Lcn/nubia/video/player/s/b;

    invoke-static {v1}, Lcn/nubia/video/player/s/b;->b(Lcn/nubia/video/player/s/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bookmark"

    const/16 v3, 0x64

    const/16 v4, 0x2800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lb/a/b/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;III)Lb/a/b/c/a/a;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    .line 5
    aget-object v5, p1, v4

    iget-object v5, v5, Lcn/nubia/video/player/s/b$b;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 6
    aget-object v5, p1, v4

    iget v5, v5, Lcn/nubia/video/player/s/b$b;->b:I

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 7
    aget-object v5, p1, v4

    iget v5, v5, Lcn/nubia/video/player/s/b$b;->c:I

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 8
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 9
    aget-object p1, p1, v4

    iget-object p1, p1, Lcn/nubia/video/player/s/b$b;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, v3, v4, p1}, Lb/a/b/c/a/a;->j(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v1, "Bookmarker"

    const-string v2, "setBookmark failed"

    .line 10
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 11
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcn/nubia/video/player/s/b$b;

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/s/b$c;->a([Lcn/nubia/video/player/s/b$b;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
