.class public abstract Lcn/nubia/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/a/f;


# instance fields
.field private final a:Lcn/nubia/b/a/f;


# direct methods
.method public constructor <init>(Lcn/nubia/b/a/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->a()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->c()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->close()V

    return-void
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

    .line 76
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 84
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    instance-of v1, p1, Lcn/nubia/b/a/f;

    if-nez v1, :cond_1

    return v0

    .line 125
    :cond_1
    check-cast p1, Lcn/nubia/b/a/f;

    .line 126
    invoke-interface {p1}, Lcn/nubia/b/a/f;->b()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/b/a/d;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 127
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/b/a/d;->f()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 128
    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/b/a/d;->c()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 129
    invoke-interface {p1}, Lcn/nubia/b/a/f;->e()J

    move-result-wide v1

    invoke-virtual {p0}, Lcn/nubia/b/a/d;->e()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public f()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->f()I

    move-result v0

    return v0
.end method

.method public g()Landroid/media/Image;
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/b/a/d;->a:Lcn/nubia/b/a/f;

    invoke-interface {v0}, Lcn/nubia/b/a/f;->g()Landroid/media/Image;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcn/nubia/b/a/d;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/b/a/d;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/b/a/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/b/a/d;->e()J

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

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcn/nubia/b/a/d;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcn/nubia/b/a/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcn/nubia/b/a/d;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
