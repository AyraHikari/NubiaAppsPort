.class public Lc/e/c/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/c/k;


# instance fields
.field private a:Lc/e/c/o;

.field private b:Lcn/nubia/collage/o/b/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/c/j;->b:Lcn/nubia/collage/o/b/k;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lc/e/c/i;

    invoke-direct {v1}, Lc/e/c/i;-><init>()V

    iput-object v1, p0, Lc/e/c/j;->a:Lc/e/c/o;

    :try_start_0
    const-string v1, "storage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, p2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_2
    :goto_0
    new-instance p1, Lc/e/c/n;

    invoke-direct {p1, v0}, Lc/e/c/n;-><init>(Ljava/io/InputStream;)V

    iget-object p2, p0, Lc/e/c/j;->a:Lc/e/c/o;

    invoke-virtual {p2, p1}, Lc/e/c/o;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/o/b/k;

    iput-object p1, p0, Lc/e/c/j;->b:Lcn/nubia/collage/o/b/k;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lc/e/c/j;->b:Lcn/nubia/collage/o/b/k;

    return-object p1
.end method
