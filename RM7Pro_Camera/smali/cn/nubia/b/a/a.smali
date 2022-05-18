.class public Lcn/nubia/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/b/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/media/Image;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:J

.field private final g:Lcom/a/a/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/e<",
            "Lcn/nubia/b/a/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/a/a;->a:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lcn/nubia/b/a/a;->b:Landroid/media/Image;

    .line 106
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/a/a;->c:I

    .line 107
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/a/a;->d:I

    .line 108
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/a/a;->e:I

    .line 109
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/b/a/a;->f:J

    .line 112
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    if-nez p1, :cond_0

    .line 114
    invoke-static {}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/b/a/a;->g:Lcom/a/a/b/e;

    goto :goto_1

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 117
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 118
    new-instance v2, Lcn/nubia/b/a/a$a;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lcn/nubia/b/a/a$a;-><init>(Lcn/nubia/b/a/a;Landroid/media/Image$Plane;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {v0}, Lcom/a/a/b/e;->a(Ljava/util/Collection;)Lcom/a/a/b/e;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/b/a/a;->g:Lcom/a/a/b/e;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 2

    .line 129
    iget-object v0, p0, Lcn/nubia/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/a;->b:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/b/a/a;->h:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 134
    :catch_0
    iget-object v1, p0, Lcn/nubia/b/a/a;->h:Landroid/graphics/Rect;

    monitor-exit v0

    return-object v1

    .line 137
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b()I
    .locals 1

    .line 160
    iget v0, p0, Lcn/nubia/b/a/a;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 168
    iget v0, p0, Lcn/nubia/b/a/a;->e:I

    return v0
.end method

.method public close()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcn/nubia/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/a;->b:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/b/a/f$a;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcn/nubia/b/a/a;->g:Lcom/a/a/b/e;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcn/nubia/b/a/a;->f:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 227
    :cond_0
    instance-of v1, p1, Lcn/nubia/b/a/f;

    if-nez v1, :cond_1

    return v0

    .line 230
    :cond_1
    check-cast p1, Lcn/nubia/b/a/f;

    .line 231
    invoke-interface {p1}, Lcn/nubia/b/a/f;->b()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/b/a/a;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 232
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/b/a/a;->f()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 233
    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/b/a/a;->c()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 234
    invoke-interface {p1}, Lcn/nubia/b/a/f;->e()J

    move-result-wide v1

    invoke-virtual {p0}, Lcn/nubia/b/a/a;->e()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public f()I
    .locals 1

    .line 192
    iget v0, p0, Lcn/nubia/b/a/a;->d:I

    return v0
.end method

.method public g()Landroid/media/Image;
    .locals 2

    .line 197
    iget-object v0, p0, Lcn/nubia/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/a;->b:Landroid/media/Image;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Lcn/nubia/b/a/a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/b/a/a;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/b/a/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/b/a/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/a/a/a/b;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidImageProxy"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Lcn/nubia/b/a/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcn/nubia/b/a/a;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcn/nubia/b/a/a;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcn/nubia/b/a/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
