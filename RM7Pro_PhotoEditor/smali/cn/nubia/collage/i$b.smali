.class Lcn/nubia/collage/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/o/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/i;-><init>(Lcn/nubia/collage/g;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/i;


# direct methods
.method constructor <init>(Lcn/nubia/collage/i;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/i$b;->a:Lcn/nubia/collage/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i$b;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/i$b;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/collage/g;->c()V

    :cond_0
    return-void
.end method
