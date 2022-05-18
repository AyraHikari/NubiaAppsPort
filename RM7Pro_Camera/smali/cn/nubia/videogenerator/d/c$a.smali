.class Lcn/nubia/videogenerator/d/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/videogenerator/d/c;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/d/c;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/videogenerator/d/c$a;->a:Lcn/nubia/videogenerator/d/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/d/c;Lcn/nubia/videogenerator/d/c$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/d/c$a;-><init>(Lcn/nubia/videogenerator/d/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$a;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->c(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$a;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->c(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->d()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$a;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->d(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$a;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->d(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/e;->b()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$a;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->e(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/c/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$a;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->e(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/a;->b()V

    :cond_2
    return-void
.end method
