.class public Landroidx/constraintlayout/b/a/l;
.super Landroidx/constraintlayout/b/a/j;
.source "SourceFile"


# instance fields
.field protected a:Landroidx/constraintlayout/b/a/a/b$a;

.field ao:Landroidx/constraintlayout/b/a/a/b$b;

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:I

.field private ax:Z

.field private ay:I

.field private az:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/constraintlayout/b/a/j;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->ap:I

    .line 29
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->aq:I

    .line 30
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->ar:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->as:I

    .line 32
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->at:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->au:I

    .line 34
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->av:I

    .line 35
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->aw:I

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/l;->ax:Z

    .line 38
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->ay:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/b/a/l;->az:I

    .line 41
    new-instance v0, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/l;->a:Landroidx/constraintlayout/b/a/a/b$a;

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Landroidx/constraintlayout/b/a/l;->ao:Landroidx/constraintlayout/b/a/a/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/a/f;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/l;->i()V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Landroidx/constraintlayout/b/a/l;->ax:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 96
    iget v0, p0, Landroidx/constraintlayout/b/a/l;->ap:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 98
    iget v0, p0, Landroidx/constraintlayout/b/a/l;->aq:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 100
    iget v0, p0, Landroidx/constraintlayout/b/a/l;->av:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 102
    iget v0, p0, Landroidx/constraintlayout/b/a/l;->aw:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroidx/constraintlayout/b/a/l;->ax:Z

    return v0
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/b/a/l;->an:I

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Landroidx/constraintlayout/b/a/l;->am:[Landroidx/constraintlayout/b/a/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/b/a/e;->b(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
