.class Lcn/nubia/k/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:[Lcn/nubia/k/a/c;


# direct methods
.method constructor <init>(Ljava/util/LinkedList;Landroid/os/Handler;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcn/nubia/k/b/e;",
            ">;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p3, p0, Lcn/nubia/k/a/d;->a:I

    .line 22
    new-array p3, p3, [Lcn/nubia/k/a/c;

    iput-object p3, p0, Lcn/nubia/k/a/d;->b:[Lcn/nubia/k/a/c;

    const/4 p3, 0x0

    .line 23
    :goto_0
    iget v0, p0, Lcn/nubia/k/a/d;->a:I

    if-ge p3, v0, :cond_0

    .line 24
    iget-object v0, p0, Lcn/nubia/k/a/d;->b:[Lcn/nubia/k/a/c;

    new-instance v1, Lcn/nubia/k/a/c;

    invoke-direct {v1, p1, p2}, Lcn/nubia/k/a/c;-><init>(Ljava/util/LinkedList;Landroid/os/Handler;)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget v1, p0, Lcn/nubia/k/a/d;->a:I

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcn/nubia/k/a/d;->b:[Lcn/nubia/k/a/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/k/a/c;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
