.class Lcn/nubia/videogenerator/d/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/videogenerator/d/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/videogenerator/d/a;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/d/a;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcn/nubia/videogenerator/d/a$2;->a:Lcn/nubia/videogenerator/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a$2;->a:Lcn/nubia/videogenerator/d/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/a;->b(Lcn/nubia/videogenerator/d/a;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/videogenerator/d/a$2;->a:Lcn/nubia/videogenerator/d/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/a;->b(Lcn/nubia/videogenerator/d/a;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->d()V

    :cond_0
    return-void
.end method
