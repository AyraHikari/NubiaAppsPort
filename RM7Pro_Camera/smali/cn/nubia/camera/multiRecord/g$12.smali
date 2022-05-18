.class Lcn/nubia/camera/multiRecord/g$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 333
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/g;->D()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->i()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 336
    :cond_0
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 337
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 338
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/multiRecord/m;->e(Z)V

    .line 339
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->m(Lcn/nubia/camera/multiRecord/g;)V

    goto/16 :goto_0

    .line 341
    :cond_1
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 342
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 343
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object p1, p1, v0

    sget-object v2, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {p1, v2, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    .line 344
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    const/4 v2, 0x4

    new-array v2, v2, [Lcn/nubia/camera/multiRecord/a;

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v1

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v4

    const/4 v5, 0x3

    aput-object v3, v2, v5

    iput-object v2, p1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    .line 345
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/m;->e()V

    .line 346
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    new-array v2, v1, [Lcn/nubia/camera/multiRecord/a;

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 347
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->o(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/d;

    move-result-object p1

    new-array v2, v5, [Lcn/nubia/camera/multiRecord/a;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v5

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 348
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->m(Lcn/nubia/camera/multiRecord/g;)V

    .line 349
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->g(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const v2, 0x7f08023a

    invoke-virtual {p1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 350
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->g(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->p(Lcn/nubia/camera/multiRecord/g;)V

    .line 353
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$12;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1, v1}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;Z)Z

    :cond_3
    :goto_1
    return-void
.end method
