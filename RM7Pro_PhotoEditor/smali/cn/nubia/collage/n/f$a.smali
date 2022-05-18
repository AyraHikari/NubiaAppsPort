.class Lcn/nubia/collage/n/f$a;
.super Lcn/nubia/collage/n/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/n/f;->r(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/collage/n/f;


# direct methods
.method constructor <init>(Lcn/nubia/collage/n/f;I)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/f$a;->b:Lcn/nubia/collage/n/f;

    iput p2, p0, Lcn/nubia/collage/n/f$a;->a:I

    invoke-direct {p0}, Lcn/nubia/collage/n/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcn/nubia/collage/n/f$a;->b:Lcn/nubia/collage/n/f;

    invoke-static {p2}, Lcn/nubia/collage/n/f;->a(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " loadUserBitmap loadOver "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ImageManager"

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcn/nubia/collage/n/f$a;->b:Lcn/nubia/collage/n/f;

    invoke-static {p2}, Lcn/nubia/collage/n/f;->a(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/n/f$a;->b:Lcn/nubia/collage/n/f;

    invoke-static {p1}, Lcn/nubia/collage/n/f;->b(Lcn/nubia/collage/n/f;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcn/nubia/collage/n/f$a;->a:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/n/f$c;

    iput-object p3, p1, Lcn/nubia/collage/n/f$c;->a:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcn/nubia/collage/n/f$a;->b:Lcn/nubia/collage/n/f;

    invoke-static {p1}, Lcn/nubia/collage/n/f;->c(Lcn/nubia/collage/n/f;)Lcn/nubia/collage/o/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/n/f$a;->b:Lcn/nubia/collage/n/f;

    invoke-static {p1}, Lcn/nubia/collage/n/f;->c(Lcn/nubia/collage/n/f;)Lcn/nubia/collage/o/b/d;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/collage/o/b/d;->a()V

    :cond_0
    return-void
.end method
