.class Lcn/nubia/choosephoto/ui/d$a;
.super Lcn/nubia/choosephoto/ui/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ui/d;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/choosephoto/ui/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcn/nubia/choosephoto/ui/d;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ui/d;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/d$a;->c:Lcn/nubia/choosephoto/ui/d;

    invoke-direct {p0, p2, p3}, Lcn/nubia/choosephoto/ui/c;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/nubia/choosephoto/ui/g;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/choosephoto/ui/d$a;->c(Lcn/nubia/choosephoto/ui/g;Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lcn/nubia/choosephoto/ui/g;Ljava/lang/String;I)V
    .locals 3

    iget-object p3, p0, Lcn/nubia/choosephoto/ui/d$a;->c:Lcn/nubia/choosephoto/ui/d;

    iget-object p3, p3, Lcn/nubia/choosephoto/ui/f;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/d$a;->c:Lcn/nubia/choosephoto/ui/d;

    iget-object v0, v0, Lcn/nubia/choosephoto/ui/f;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f080191

    const v0, 0x7f07008e

    invoke-virtual {p1, p3, v0}, Lcn/nubia/choosephoto/ui/g;->e(II)Lcn/nubia/choosephoto/ui/g;

    invoke-virtual {p1, p3}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f08022a

    invoke-virtual {p1, v2}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p1, p3, p2}, Lcn/nubia/choosephoto/ui/g;->d(ILjava/lang/String;)Lcn/nubia/choosephoto/ui/g;

    iget-object p3, p0, Lcn/nubia/choosephoto/ui/d$a;->c:Lcn/nubia/choosephoto/ui/d;

    iget-object p3, p3, Lcn/nubia/choosephoto/ui/b;->a:Lcn/nubia/choosephoto/ui/b$a;

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Lcn/nubia/choosephoto/ui/b$a;->a(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    iget-object p3, p0, Lcn/nubia/choosephoto/ui/d$a;->c:Lcn/nubia/choosephoto/ui/d;

    invoke-static {p3, v1, p1, p2}, Lcn/nubia/choosephoto/ui/d;->e(Lcn/nubia/choosephoto/ui/d;ZLcn/nubia/choosephoto/ui/g;Ljava/lang/String;)V

    new-instance p3, Lcn/nubia/choosephoto/ui/d$a$a;

    invoke-direct {p3, p0, p2, p1}, Lcn/nubia/choosephoto/ui/d$a$a;-><init>(Lcn/nubia/choosephoto/ui/d$a;Ljava/lang/String;Lcn/nubia/choosephoto/ui/g;)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
