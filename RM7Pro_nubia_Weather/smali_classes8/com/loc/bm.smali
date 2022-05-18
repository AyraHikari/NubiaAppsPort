.class public final Lcom/loc/bm;
.super Lcom/loc/bq;
.source "FileNumUpdateStrategy.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/loc/bq;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/loc/bq;-><init>(Lcom/loc/bq;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/loc/bm;->a:I

    iput-object p1, p0, Lcom/loc/bm;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "fus"

    const-string v3, "gfn"

    invoke-static {v1, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    iget-object v0, p0, Lcom/loc/bm;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bm;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/loc/bm;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
