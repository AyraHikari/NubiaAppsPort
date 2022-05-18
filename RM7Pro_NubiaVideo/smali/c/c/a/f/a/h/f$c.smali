.class public Lc/c/a/f/a/h/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lc/c/a/f/a/h/f$i;

.field private b:Lc/c/a/f/a/h/f$j;

.field private c:Lc/c/a/f/a/h/f$k;

.field private d:Lc/c/a/f/a/g;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Lc/c/a/f/a/h/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lc/c/a/f/a/h/f$c;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/c/a/f/a/h/f$c;->f:I

    .line 4
    sget-object v0, Lc/c/a/f/a/h/b;->c:Lc/c/a/f/a/h/b;

    iput-object v0, p0, Lc/c/a/f/a/h/f$c;->h:Lc/c/a/f/a/h/b;

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/f/a/h/f;
    .locals 9

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$c;->d:Lc/c/a/f/a/g;

    const-string v1, "renderer has not been set"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/f$c;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/c/a/f/a/h/f$c;->c:Lc/c/a/f/a/h/f$k;

    const-string v1, "surface has not been set"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/c/a/f/a/h/f$c;->a:Lc/c/a/f/a/h/f$i;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iget v1, p0, Lc/c/a/f/a/h/f$c;->e:I

    invoke-static {v0, v1}, Lc/c/a/f/a/h/f$n;->f(ZI)Lc/c/a/f/a/h/f$n;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/a/h/f$c;->a:Lc/c/a/f/a/h/f$i;

    .line 7
    :cond_1
    iget-object v0, p0, Lc/c/a/f/a/h/f$c;->b:Lc/c/a/f/a/h/f$j;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lc/c/a/f/a/h/f$g;

    iget v1, p0, Lc/c/a/f/a/h/f$c;->e:I

    invoke-direct {v0, v1}, Lc/c/a/f/a/h/f$g;-><init>(I)V

    iput-object v0, p0, Lc/c/a/f/a/h/f$c;->b:Lc/c/a/f/a/h/f$j;

    .line 9
    :cond_2
    iget-object v0, p0, Lc/c/a/f/a/h/f$c;->c:Lc/c/a/f/a/h/f$k;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lc/c/a/f/a/h/f$h;

    invoke-direct {v0}, Lc/c/a/f/a/h/f$h;-><init>()V

    iput-object v0, p0, Lc/c/a/f/a/h/f$c;->c:Lc/c/a/f/a/h/f$k;

    .line 11
    :cond_3
    new-instance v0, Lc/c/a/f/a/h/f;

    iget-object v2, p0, Lc/c/a/f/a/h/f$c;->a:Lc/c/a/f/a/h/f$i;

    iget-object v3, p0, Lc/c/a/f/a/h/f$c;->b:Lc/c/a/f/a/h/f$j;

    iget-object v4, p0, Lc/c/a/f/a/h/f$c;->c:Lc/c/a/f/a/h/f$k;

    iget-object v5, p0, Lc/c/a/f/a/h/f$c;->d:Lc/c/a/f/a/g;

    iget v6, p0, Lc/c/a/f/a/h/f$c;->f:I

    iget-object v7, p0, Lc/c/a/f/a/h/f$c;->g:Ljava/lang/Object;

    iget-object v8, p0, Lc/c/a/f/a/h/f$c;->h:Lc/c/a/f/a/h/b;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lc/c/a/f/a/h/f;-><init>(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;Lc/c/a/f/a/g;ILjava/lang/Object;Lc/c/a/f/a/h/b;)V

    return-object v0
.end method

.method public b(I)Lc/c/a/f/a/h/f$c;
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/f/a/h/f$c;->f:I

    return-object p0
.end method

.method public c(Lc/c/a/f/a/g;)Lc/c/a/f/a/h/f$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/h/f$c;->d:Lc/c/a/f/a/g;

    return-object p0
.end method

.method public d(Lc/c/a/f/a/h/b;)Lc/c/a/f/a/h/f$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/h/f$c;->h:Lc/c/a/f/a/h/b;

    return-object p0
.end method

.method public e(Ljava/lang/Object;)Lc/c/a/f/a/h/f$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/h/f$c;->g:Ljava/lang/Object;

    return-object p0
.end method
