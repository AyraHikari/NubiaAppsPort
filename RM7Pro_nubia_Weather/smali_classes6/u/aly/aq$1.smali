.class Lu/aly/aq$1;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Lcom/umeng/analytics/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/aq;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/aq;


# direct methods
.method constructor <init>(Lu/aly/aq;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public b(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 107
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-static {v2}, Lu/aly/bk;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 110
    :try_start_2
    invoke-static {v2}, Lu/aly/bk;->c(Ljava/io/InputStream;)V

    .line 114
    iget-object v2, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-static {v2}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/al;

    move-result-object v2

    invoke-virtual {v2, v3}, Lu/aly/al;->a([B)[B

    move-result-object v2

    .line 115
    if-nez v2, :cond_2

    move v2, v0

    .line 121
    :goto_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-static {v3}, Lu/aly/aq;->b(Lu/aly/aq;)Lu/aly/as;

    move-result-object v3

    invoke-virtual {v3}, Lu/aly/as;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-static {v3}, Lu/aly/aq;->b(Lu/aly/aq;)Lu/aly/as;

    move-result-object v3

    invoke-virtual {v3}, Lu/aly/as;->l()V

    .line 125
    :cond_0
    iget-object v3, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-static {v3}, Lu/aly/aq;->c(Lu/aly/aq;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    :cond_1
    :goto_1
    return v0

    .line 110
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lu/aly/bk;->c(Ljava/io/InputStream;)V

    throw v0

    .line 134
    :catch_0
    move-exception v0

    move v0, v1

    .line 138
    goto :goto_1

    .line 118
    :cond_2
    iget-object v3, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-static {v3, v2}, Lu/aly/aq;->a(Lu/aly/aq;[B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_0

    .line 129
    :cond_3
    if-ne v2, v0, :cond_1

    move v0, v1

    .line 130
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public c(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-static {v0}, Lu/aly/aq;->b(Lu/aly/aq;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->k()V

    .line 144
    return-void
.end method
