.class Lcn/nubia/collage/n/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/n/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/n/f;->o(Lcn/nubia/collage/n/f$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/nubia/collage/n/f$d;

.field final synthetic c:Lcn/nubia/collage/n/f;


# direct methods
.method constructor <init>(Lcn/nubia/collage/n/f;Ljava/util/List;Lcn/nubia/collage/n/f$d;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    iput-object p2, p0, Lcn/nubia/collage/n/f$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/collage/n/f$b;->b:Lcn/nubia/collage/n/f$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "PhotoEditor"

    const-string v1, "ImageManager loadAllUserImages success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    invoke-static {v0}, Lcn/nubia/collage/n/f;->d(Lcn/nubia/collage/n/f;)Lcn/nubia/collage/n/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    invoke-static {v0}, Lcn/nubia/collage/n/f;->d(Lcn/nubia/collage/n/f;)Lcn/nubia/collage/n/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/j;->e()V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/nubia/collage/n/f$b;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcn/nubia/collage/n/f$b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/collage/n/f$b;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/collage/n/a;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load User Image fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/collage/n/f$b;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcn/nubia/collage/n/f$b;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    invoke-static {v1}, Lcn/nubia/collage/n/f;->e(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    invoke-static {v1}, Lcn/nubia/collage/n/f;->b(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_2
    iget-object v1, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    invoke-static {v1}, Lcn/nubia/collage/n/f;->e(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    invoke-static {v1}, Lcn/nubia/collage/n/f;->b(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/n/f$c;

    iget-object v3, p0, Lcn/nubia/collage/n/f$b;->c:Lcn/nubia/collage/n/f;

    invoke-static {v3}, Lcn/nubia/collage/n/f;->e(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v1, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcn/nubia/collage/n/f$b;->b:Lcn/nubia/collage/n/f$d;

    invoke-interface {v0}, Lcn/nubia/collage/n/f$d;->a()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
