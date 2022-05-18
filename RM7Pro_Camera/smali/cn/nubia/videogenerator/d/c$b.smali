.class Lcn/nubia/videogenerator/d/c$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/videogenerator/d/c;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/d/c;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/videogenerator/d/c$b;->a:Lcn/nubia/videogenerator/d/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/d/c;Lcn/nubia/videogenerator/d/c$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/d/c$b;-><init>(Lcn/nubia/videogenerator/d/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$b;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$b;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->a(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->d()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$b;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->b(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcn/nubia/videogenerator/d/c$b;->a:Lcn/nubia/videogenerator/d/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/c;->b(Lcn/nubia/videogenerator/d/c;)Lcn/nubia/videogenerator/codec/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/g;->b()V

    :cond_1
    return-void
.end method
