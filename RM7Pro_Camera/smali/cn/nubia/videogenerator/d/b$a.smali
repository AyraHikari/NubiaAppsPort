.class Lcn/nubia/videogenerator/d/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/videogenerator/d/b;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/d/b;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/d/b;Lcn/nubia/videogenerator/d/b$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/d/b$a;-><init>(Lcn/nubia/videogenerator/d/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SlomoGenerator"

    const-string v1, "start editing local video"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->a(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->b(Lcn/nubia/videogenerator/d/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->a(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/f;->b(J)V

    .line 115
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->a(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/codec/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f;->d()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->c(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/codec/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->b(Lcn/nubia/videogenerator/d/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->c(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/codec/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/e;->b()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->d(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/c/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->b(Lcn/nubia/videogenerator/d/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->d(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/c/b;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/c/b;->a(J)V

    .line 123
    iget-object v0, p0, Lcn/nubia/videogenerator/d/b$a;->a:Lcn/nubia/videogenerator/d/b;

    invoke-static {v0}, Lcn/nubia/videogenerator/d/b;->d(Lcn/nubia/videogenerator/d/b;)Lcn/nubia/videogenerator/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/c/b;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
