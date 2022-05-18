.class public abstract Lcn/nubia/camera/ac/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ac/b;


# static fields
.field private static b:Lcn/nubia/camera/af/b;

.field private static c:Lcn/nubia/camera/af/b;

.field private static d:Lcn/nubia/camera/af/b;

.field private static e:Lcn/nubia/camera/af/b;

.field private static f:Lcn/nubia/camera/af/b;

.field private static g:Lcn/nubia/camera/af/b;

.field private static h:Lcn/nubia/camera/af/b;

.field private static i:Lcn/nubia/camera/af/b;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcn/nubia/camera/ac/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ac/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/af/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lcn/nubia/camera/ac/a;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method protected b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcn/nubia/camera/ac/a;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcn/nubia/camera/ac/a;->e()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ac/a;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcn/nubia/camera/ac/a;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p0}, Lcn/nubia/camera/ac/a;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {p0}, Lcn/nubia/camera/ac/a;->f()Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method protected e()Lcn/nubia/camera/af/b;
    .locals 4

    .line 42
    sget-object v0, Lcn/nubia/camera/ac/a;->b:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/camera/af/b;

    .line 44
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    sput-object v1, Lcn/nubia/camera/ac/a;->b:Lcn/nubia/camera/af/b;

    .line 47
    :cond_1
    sget-object v0, Lcn/nubia/camera/ac/a;->b:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method protected f()Lcn/nubia/camera/af/b;
    .locals 4

    .line 51
    sget-object v0, Lcn/nubia/camera/ac/a;->c:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_1

    .line 52
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/camera/af/b;

    .line 53
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    sput-object v1, Lcn/nubia/camera/ac/a;->c:Lcn/nubia/camera/af/b;

    .line 56
    :cond_1
    sget-object v0, Lcn/nubia/camera/ac/a;->c:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method protected g()Lcn/nubia/camera/af/b;
    .locals 4

    .line 60
    sget-object v0, Lcn/nubia/camera/ac/a;->d:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/camera/af/b;

    .line 62
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    sput-object v1, Lcn/nubia/camera/ac/a;->d:Lcn/nubia/camera/af/b;

    .line 65
    :cond_1
    sget-object v0, Lcn/nubia/camera/ac/a;->d:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method protected h()Lcn/nubia/camera/af/b;
    .locals 4

    .line 69
    sget-object v0, Lcn/nubia/camera/ac/a;->e:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/camera/af/b;

    .line 71
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    sput-object v1, Lcn/nubia/camera/ac/a;->e:Lcn/nubia/camera/af/b;

    .line 74
    :cond_1
    sget-object v0, Lcn/nubia/camera/ac/a;->e:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method protected i()Lcn/nubia/camera/af/b;
    .locals 4

    .line 78
    sget-object v0, Lcn/nubia/camera/ac/a;->f:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/camera/af/b;

    .line 80
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    sput-object v1, Lcn/nubia/camera/ac/a;->f:Lcn/nubia/camera/af/b;

    .line 83
    :cond_1
    sget-object v0, Lcn/nubia/camera/ac/a;->f:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method protected j()Lcn/nubia/camera/af/b;
    .locals 4

    .line 87
    sget-object v0, Lcn/nubia/camera/ac/a;->g:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/camera/af/b;

    .line 89
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    sput-object v1, Lcn/nubia/camera/ac/a;->g:Lcn/nubia/camera/af/b;

    .line 92
    :cond_1
    sget-object v0, Lcn/nubia/camera/ac/a;->g:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method protected k()Lcn/nubia/camera/af/b;
    .locals 4

    .line 96
    sget-object v0, Lcn/nubia/camera/ac/a;->h:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/camera/ac/a;->h:Lcn/nubia/camera/af/b;

    .line 99
    :cond_0
    sget-object v0, Lcn/nubia/camera/ac/a;->h:Lcn/nubia/camera/af/b;

    return-object v0
.end method

.method protected l()Lcn/nubia/camera/af/b;
    .locals 4

    .line 103
    sget-object v0, Lcn/nubia/camera/ac/a;->i:Lcn/nubia/camera/af/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/camera/ac/a;->i:Lcn/nubia/camera/af/b;

    .line 106
    :cond_0
    sget-object v0, Lcn/nubia/camera/ac/a;->i:Lcn/nubia/camera/af/b;

    return-object v0
.end method
