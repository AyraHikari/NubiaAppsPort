.class Lcn/nubia/commonui/widget/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/a;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    invoke-static {v0}, Lcn/nubia/commonui/widget/a;->c(Lcn/nubia/commonui/widget/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/a;->d(Lcn/nubia/commonui/widget/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    invoke-static {v1}, Lcn/nubia/commonui/widget/a;->c(Lcn/nubia/commonui/widget/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    invoke-static {v1}, Lcn/nubia/commonui/widget/a;->c(Lcn/nubia/commonui/widget/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/c/b/m;

    invoke-static {v1, v2}, Lcn/nubia/commonui/widget/a;->e(Lcn/nubia/commonui/widget/a;Lb/a/b/c/b/m;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    invoke-static {v2}, Lcn/nubia/commonui/widget/a;->b(Lcn/nubia/commonui/widget/a;)Ljava/util/ArrayList;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    .line 6
    invoke-static {v1, v3}, Lb/a/b/d/a;->d(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    invoke-static {v0}, Lcn/nubia/commonui/widget/a;->f(Lcn/nubia/commonui/widget/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/a$b;->a:Lcn/nubia/commonui/widget/a;

    invoke-static {v1}, Lcn/nubia/commonui/widget/a;->a(Lcn/nubia/commonui/widget/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
