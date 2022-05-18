.class Lcn/nubia/collage/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/o/b/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/h;->L()V
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

    iput-object p1, p0, Lcn/nubia/collage/h$a;->a:Lcn/nubia/collage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/nubia/collage/o/b/k;)V
    .locals 0

    iget-object p1, p0, Lcn/nubia/collage/h$a;->a:Lcn/nubia/collage/h;

    invoke-static {p1}, Lcn/nubia/collage/h;->x(Lcn/nubia/collage/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcn/nubia/collage/h$a;->a:Lcn/nubia/collage/h;

    invoke-static {p1, p2}, Lcn/nubia/collage/h;->y(Lcn/nubia/collage/h;Z)V

    return-void
.end method
