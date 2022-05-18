.class Lcn/nubia/i/f$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcn/nubia/i/f$10;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/i/i;)V
    .locals 3

    .line 471
    invoke-virtual {p1}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/i/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p1, v0}, Lcn/nubia/i/i;->b(I)V

    .line 473
    iget-object v1, p0, Lcn/nubia/i/f$10;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    .line 474
    iget-object v1, p0, Lcn/nubia/i/f$10;->a:Lcn/nubia/i/f;

    invoke-static {v1}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/i/i;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcn/nubia/i/i;->l()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 476
    :cond_1
    iget-object v0, p0, Lcn/nubia/i/f$10;->a:Lcn/nubia/i/f;

    invoke-static {v0, p1}, Lcn/nubia/i/f;->c(Lcn/nubia/i/f;Lcn/nubia/i/i;)V

    .line 477
    iget-object v0, p0, Lcn/nubia/i/f$10;->a:Lcn/nubia/i/f;

    invoke-static {v0}, Lcn/nubia/i/f;->t(Lcn/nubia/i/f;)Lcn/nubia/i/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/i/g;->a(Lcn/nubia/i/i;)V

    .line 478
    iget-object p1, p0, Lcn/nubia/i/f$10;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->r(Lcn/nubia/i/f;)V

    :goto_1
    return-void
.end method
