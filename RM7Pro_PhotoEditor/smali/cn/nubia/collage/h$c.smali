.class Lcn/nubia/collage/h$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/h$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/h;->u(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/h;


# direct methods
.method constructor <init>(Lcn/nubia/collage/h;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/h$c;->a:Lcn/nubia/collage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/h$c;->a:Lcn/nubia/collage/h;

    invoke-static {v0, p1}, Lcn/nubia/collage/h;->z(Lcn/nubia/collage/h;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcn/nubia/collage/h$c;->a:Lcn/nubia/collage/h;

    invoke-static {p1}, Lcn/nubia/collage/h;->A(Lcn/nubia/collage/h;)V

    iget-object p1, p0, Lcn/nubia/collage/h$c;->a:Lcn/nubia/collage/h;

    invoke-static {p1}, Lcn/nubia/collage/h;->B(Lcn/nubia/collage/h;)V

    iget-object p1, p0, Lcn/nubia/collage/h$c;->a:Lcn/nubia/collage/h;

    invoke-static {p1}, Lcn/nubia/collage/h;->C(Lcn/nubia/collage/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcn/nubia/collage/h$c;->a:Lcn/nubia/collage/h;

    invoke-static {p1}, Lcn/nubia/collage/h;->D(Lcn/nubia/collage/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/h$c;->a:Lcn/nubia/collage/h;

    invoke-static {p1}, Lcn/nubia/collage/h;->E(Lcn/nubia/collage/h;)V

    :cond_1
    :goto_0
    return-void
.end method
