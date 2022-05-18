.class Lcn/nubia/collage/o/b/l$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/n/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/o/b/l$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/o/b/l$a;


# direct methods
.method constructor <init>(Lcn/nubia/collage/o/b/l$a;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/b/l$a$a;->a:Lcn/nubia/collage/o/b/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/collage/o/b/k;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->d()V

    iget-object p2, p0, Lcn/nubia/collage/o/b/l$a$a;->a:Lcn/nubia/collage/o/b/l$a;

    iget-object v0, p2, Lcn/nubia/collage/o/b/l$a;->c:Lcn/nubia/collage/o/b/l$b;

    iget-object p2, p2, Lcn/nubia/collage/o/b/l$a;->b:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Lcn/nubia/collage/o/b/l$b;->a(Ljava/lang/String;Lcn/nubia/collage/o/b/k;)V

    return-void
.end method
