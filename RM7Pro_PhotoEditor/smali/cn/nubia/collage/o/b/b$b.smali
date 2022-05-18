.class Lcn/nubia/collage/o/b/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/o/b/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/o/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcn/nubia/collage/o/b/l$b;

.field final synthetic b:Lcn/nubia/collage/o/b/b;


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/b/b;Lcn/nubia/collage/o/b/l$b;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/nubia/collage/o/b/b$b;->a:Lcn/nubia/collage/o/b/l$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/nubia/collage/o/b/k;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {v0}, Lcn/nubia/collage/o/b/b;->c(Lcn/nubia/collage/o/b/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {v1}, Lcn/nubia/collage/o/b/b;->a(Lcn/nubia/collage/o/b/b;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/collage/o/b/b$b;->a:Lcn/nubia/collage/o/b/l$b;

    invoke-interface {v0, p1, p2}, Lcn/nubia/collage/o/b/l$b;->a(Ljava/lang/String;Lcn/nubia/collage/o/b/k;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Collage parseFinished failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhotoEditor"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {p1}, Lcn/nubia/collage/o/b/b;->d(Lcn/nubia/collage/o/b/b;)I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/collage/o/b/b;->b(Lcn/nubia/collage/o/b/b;I)I

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {p2}, Lcn/nubia/collage/o/b/b;->e(Lcn/nubia/collage/o/b/b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/collage/n/f;->C(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/nubia/collage/o/b/b$b;->a:Lcn/nubia/collage/o/b/l$b;

    iget-object p2, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {p2}, Lcn/nubia/collage/o/b/b;->f(Lcn/nubia/collage/o/b/b;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {v0}, Lcn/nubia/collage/o/b/b;->a(Lcn/nubia/collage/o/b/b;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {v0}, Lcn/nubia/collage/o/b/b;->c(Lcn/nubia/collage/o/b/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/b$b;->b:Lcn/nubia/collage/o/b/b;

    invoke-static {v1}, Lcn/nubia/collage/o/b/b;->a(Lcn/nubia/collage/o/b/b;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/b/k;

    invoke-interface {p1, p2, v0}, Lcn/nubia/collage/o/b/l$b;->a(Ljava/lang/String;Lcn/nubia/collage/o/b/k;)V

    :goto_0
    return-void
.end method
