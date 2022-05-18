.class Lcn/nubia/collage/n/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/n/a;->f(Ljava/lang/String;ILcn/nubia/collage/n/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/n/a$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcn/nubia/collage/n/a;


# direct methods
.method constructor <init>(Lcn/nubia/collage/n/a;Lcn/nubia/collage/n/a$b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/a$a;->d:Lcn/nubia/collage/n/a;

    iput-object p2, p0, Lcn/nubia/collage/n/a$a;->a:Lcn/nubia/collage/n/a$b;

    iput-object p3, p0, Lcn/nubia/collage/n/a$a;->b:Ljava/lang/String;

    iput p4, p0, Lcn/nubia/collage/n/a$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/n/a$a;->a:Lcn/nubia/collage/n/a$b;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/n/a$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/collage/n/a$b;->b(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcn/nubia/collage/n/a$a;->d:Lcn/nubia/collage/n/a;

    iget-object v1, p0, Lcn/nubia/collage/n/a$a;->b:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/collage/n/a$a;->c:I

    invoke-static {v0, v1, v3}, Lcn/nubia/collage/n/a;->a(Lcn/nubia/collage/n/a;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/n/a$a;->a:Lcn/nubia/collage/n/a$b;

    iget-object v3, p0, Lcn/nubia/collage/n/a$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v4, "collage dng decode failed"

    goto :goto_0

    :cond_0
    const-string v4, "decode Success"

    :goto_0
    invoke-virtual {v1, v3, v2, v0, v4}, Lcn/nubia/collage/n/a$b;->e(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
