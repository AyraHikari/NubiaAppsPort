.class public Lc/b/a/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:Lc/b/a/l/b;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/l/b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/b/a/l/c;->a:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/b/a/l/c;->b:I

    .line 4
    iput v0, p0, Lc/b/a/l/c;->c:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/a/l/c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/l/c;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/l/c;->b:I

    return v0
.end method
