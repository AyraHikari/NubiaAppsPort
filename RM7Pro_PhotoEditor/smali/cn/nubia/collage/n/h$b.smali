.class Lcn/nubia/collage/n/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/n/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/n/h;->h(Lcn/nubia/collage/o/b/k;Ljava/lang/String;Lcn/nubia/collage/n/h$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/nubia/collage/n/h$c;

.field final synthetic c:Lcn/nubia/collage/o/b/k;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/nubia/collage/n/h;


# direct methods
.method constructor <init>(Lcn/nubia/collage/n/h;Ljava/util/List;Lcn/nubia/collage/n/h$c;Lcn/nubia/collage/o/b/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/h$b;->e:Lcn/nubia/collage/n/h;

    iput-object p2, p0, Lcn/nubia/collage/n/h$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/collage/n/h$b;->b:Lcn/nubia/collage/n/h$c;

    iput-object p4, p0, Lcn/nubia/collage/n/h$b;->c:Lcn/nubia/collage/o/b/k;

    iput-object p5, p0, Lcn/nubia/collage/n/h$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/n/h$b;->e:Lcn/nubia/collage/n/h;

    invoke-static {v0}, Lcn/nubia/collage/n/h;->b(Lcn/nubia/collage/n/h;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/n/h$b;->e:Lcn/nubia/collage/n/h;

    invoke-static {v1}, Lcn/nubia/collage/n/h;->a(Lcn/nubia/collage/n/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcn/nubia/collage/n/h$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/n/h$b;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/collage/n/h$b;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/collage/n/h$b;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/collage/n/a;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/nubia/collage/n/h$b;->e:Lcn/nubia/collage/n/h;

    invoke-static {v1}, Lcn/nubia/collage/n/h;->b(Lcn/nubia/collage/n/h;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/n/h$b;->e:Lcn/nubia/collage/n/h;

    invoke-static {v2}, Lcn/nubia/collage/n/h;->a(Lcn/nubia/collage/n/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MaterialBitmapCache size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhotoEditor"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/nubia/collage/n/h$b;->b:Lcn/nubia/collage/n/h$c;

    iget-object v1, p0, Lcn/nubia/collage/n/h$b;->c:Lcn/nubia/collage/o/b/k;

    iget-object v2, p0, Lcn/nubia/collage/n/h$b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/nubia/collage/n/h$c;->a(Lcn/nubia/collage/o/b/k;Ljava/lang/String;)V

    return-void
.end method
