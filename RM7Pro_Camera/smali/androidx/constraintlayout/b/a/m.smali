.class public Landroidx/constraintlayout/b/a/m;
.super Landroidx/constraintlayout/b/a/e;
.source "SourceFile"


# instance fields
.field public aH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/b/a/e;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public Z()V
    .locals 4

    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 163
    iget-object v2, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/e;

    .line 164
    instance-of v3, v2, Landroidx/constraintlayout/b/a/m;

    if-eqz v3, :cond_1

    .line 165
    check-cast v2, Landroidx/constraintlayout/b/a/m;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/m;->Z()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/c;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/c;)V

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 175
    iget-object v2, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/e;

    .line 176
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ac()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/e;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ad()V
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(Landroidx/constraintlayout/b/a/e;)V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/m;

    .line 75
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/a/m;->c(Landroidx/constraintlayout/b/a/e;)V

    .line 77
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/b/a/e;->a_(Landroidx/constraintlayout/b/a/e;)V

    return-void
.end method

.method public c(Landroidx/constraintlayout/b/a/e;)V
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/e;->s()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/b/a/m;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/constraintlayout/b/a/e;->s()V

    return-void
.end method
