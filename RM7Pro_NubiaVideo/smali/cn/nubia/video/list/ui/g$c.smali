.class Lcn/nubia/video/list/ui/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/e/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/list/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/e/d$c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcn/nubia/video/list/ui/g;


# direct methods
.method public constructor <init>(Lcn/nubia/video/list/ui/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/g$c;->b:Lcn/nubia/video/list/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcn/nubia/video/list/ui/g$c;->a:I

    return-void
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/r;",
            ">;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lb/a/b/c/b/r;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/b/e/d$d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/list/ui/g$c;->c(Lb/a/b/e/d$d;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public c(Lb/a/b/e/d$d;)Ljava/lang/Void;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/g$c;->b:Lcn/nubia/video/list/ui/g;

    invoke-virtual {v0}, Lcn/nubia/video/list/ui/f;->G()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/nubia/video/list/ui/g$c;->b(Ljava/util/ArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/list/ui/g$c;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/a/b/c/b/r;

    .line 5
    invoke-interface {p1}, Lb/a/b/e/d$d;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    .line 6
    :cond_1
    iget-object v5, p0, Lcn/nubia/video/list/ui/g$c;->b:Lcn/nubia/video/list/ui/g;

    iget-object v5, v5, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {v5, v4}, Lb/a/b/c/b/f;->w(Lb/a/b/c/b/r;)V

    .line 7
    iget-object v4, p0, Lcn/nubia/video/list/ui/g$c;->b:Lcn/nubia/video/list/ui/g;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v1}, Lcn/nubia/video/list/ui/g;->Y(Lcn/nubia/video/list/ui/g;I)V

    move v1, v5

    goto :goto_0

    :cond_2
    move p1, v3

    .line 8
    :goto_1
    iget-object v0, p0, Lcn/nubia/video/list/ui/g$c;->b:Lcn/nubia/video/list/ui/g;

    invoke-static {v0, p1, v3}, Lcn/nubia/video/list/ui/g;->Z(Lcn/nubia/video/list/ui/g;II)V

    :cond_3
    return-object v2
.end method
