.class Lcn/nubia/collage/o/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/n/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/o/b/b;->g(Landroid/content/Context;Lcn/nubia/collage/o/b/l$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/o/b/l$b;


# direct methods
.method constructor <init>(Lcn/nubia/collage/o/b/b;Lcn/nubia/collage/o/b/l$b;)V
    .locals 0

    iput-object p2, p0, Lcn/nubia/collage/o/b/b$a;->a:Lcn/nubia/collage/o/b/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/collage/o/b/k;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->a()V

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/b/b$a;->a:Lcn/nubia/collage/o/b/l$b;

    invoke-interface {v0, p2, p1}, Lcn/nubia/collage/o/b/l$b;->a(Ljava/lang/String;Lcn/nubia/collage/o/b/k;)V

    return-void
.end method
